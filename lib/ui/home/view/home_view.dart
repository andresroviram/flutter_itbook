import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/common/services/local_storage.dart';
import '../../../core/home/domain/usecases/home_usecases.dart';
import '../../../injectable_dependency.dart';
import '../../navigation/cubit/home_navigation.dart';
import '../../navigation/cubit/router_manager.dart';
import '../bloc/home/home_bloc.dart';
import 'home_movil.dart';
import 'home_web.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String path = '/';
  static const String name = 'home';

  static Widget create() => MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (context) => HomeBloc(
              homeUseCase: getIt<HomeUseCase>(),
              localStorage: getIt<LocalStorage>(),
            )..add(const HomeEvent.init()),
          ),
          BlocProvider.value(
            value: HomeNavigation(
              navigation: getIt<RouterManager>(),
            ),
          )
        ],
        child: const HomeView(),
      );

  @override
  Widget build(BuildContext context) {
    final breakpoint = ResponsiveBreakpoints.of(context).breakpoint;
    return Scaffold(
      body: switch (breakpoint.name) {
        MOBILE => const HomeMovil(),
        (_) => const HomeWeb(),
      },
    );
  }
}
