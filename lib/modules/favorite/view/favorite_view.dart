import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/services/local_storage.dart';
import '../../home/domain/usecases/home_usecases.dart';
import '../../../config/injectable/injectable_dependency.dart';
import '../../home/presentation/bloc/home/home_bloc.dart';
import '../navigation.dart';
import '../../../config/routes/cubit/router_manager.dart';
import 'favorite_movil.dart';
import 'favorite_web.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});
  static const String path = '/favorite';
  static const String name = 'favorite';

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
            value: FavoriteNavigation(
              navigation: getIt<RouterManager>(),
            ),
          )
        ],
        child: const FavoriteView(),
      );

  @override
  Widget build(BuildContext context) {
    final breakpoint = ResponsiveBreakpoints.of(context).breakpoint;
    return Scaffold(
      body: switch (breakpoint.name) {
        MOBILE => const FavoriteMovil(),
        (_) => const FavoriteWeb(),
      },
    );
  }
}
