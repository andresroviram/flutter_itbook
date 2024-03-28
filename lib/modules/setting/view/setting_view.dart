import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/services/local_storage.dart';
import '../../home/domain/usecases/home_usecases.dart';
import '../../../config/injectable/injectable_dependency.dart';
import '../../home/presentation/bloc/home/home_bloc.dart';
import '../../../config/routes/cubit/router_manager.dart';
import '../navigation.dart';
import 'setting_movil.dart';
import 'setting_web.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});
  static const String path = '/setting';
  static const String name = 'setting';

  static Widget create() => MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (context) => HomeBloc(
              homeUseCase: getIt<HomeUseCase>(),
              localStorage: getIt<LocalStorage>(),
            ),
          ),
          BlocProvider.value(
            value: SettingNavigation(
              navigation: getIt<RouterManager>(),
            ),
          )
        ],
        child: const SettingView(),
      );

  @override
  Widget build(BuildContext context) {
    final breakpoint = ResponsiveBreakpoints.of(context).breakpoint;
    return Scaffold(
      body: switch (breakpoint.name) {
        MOBILE => const SettingMovil(),
        (_) => const SettingWeb(),
      },
    );
  }
}
