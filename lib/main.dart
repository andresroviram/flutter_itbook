import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:window_manager/window_manager.dart';
import 'package:url_strategy/url_strategy.dart';

import 'core/services/analytic.dart';
import 'core/services/bloc_observer.dart';
import 'config/injectable/injectable_dependency.dart';
import 'providers.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();
      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );
      Bloc.observer = AppBlocObserver();
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: kIsWeb
            ? HydratedStorage.webStorageDirectory
            : await getTemporaryDirectory(),
      );

      if (!isWeb && !Platform.isAndroid && !Platform.isIOS) {
        await windowManager.ensureInitialized();
        WindowOptions windowOptions = const WindowOptions(
          // size: Size(800, 600),
          backgroundColor: Colors.transparent,
          skipTaskbar: false,
          titleBarStyle: TitleBarStyle.normal,
        );
        windowManager.waitUntilReadyToShow(windowOptions, () async {
          await windowManager.setBrightness(Brightness.dark);
          await windowManager.show();
          await windowManager.focus();
          // await windowManager.setMaximumSize(const Size(1920, 1080));
          await windowManager.setMinimumSize(const Size(450, 768));
        });
      }

      FlutterError.onError = (details) {
        log(details.exceptionAsString(), stackTrace: details.stack);
      };

      setPathUrlStrategy();
      await configureDependencies();

      runApp(const ProvidersBloc());
    },
    isWeb
        ? (Object error, StackTrace stackTrace) =>
            log(error.toString(), stackTrace: stackTrace)
        : (Object error, StackTrace stackTrace) =>
            crashlytics?.recordError(error, stackTrace),
  );
}
