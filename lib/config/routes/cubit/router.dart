import 'package:flutter/material.dart';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import '../../../modules/favorite/routes.dart';
import '../../../modules/home/routes.dart';
import '../../../modules/home/presentation/view/detail/detail_view.dart';
import '../../../modules/login/login.dart';
import '../../../modules/setting/routes.dart';
import '../scaffold_with_navigation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: kDebugMode,
  initialLocation: LoginView.path,
  observers: [BotToastNavigatorObserver()],
  routes: [
    GoRoute(
      path: LoginView.path,
      name: LoginView.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: LoginView.create(),
      ),
    ),
    GoRoute(
      path: DetailView.path,
      name: DetailView.name,
      pageBuilder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        return MaterialPage(
          key: state.pageKey,
          child: DetailView.create(
            isbn13: state.pathParameters['isbn13'] as String,
            heroTag: extra['heroTag'] as String,
          ),
        );
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return SelectionArea(
          child: ScaffoldWithNavigation(navigationShell: navigationShell),
        );
      },
      branches: [
        homeRoutes,
        favoriteRoutes,
        settingRoutes,
      ],
    ),
  ],
);
