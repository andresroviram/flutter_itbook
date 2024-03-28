import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'presentation/view/home_view.dart';

final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

StatefulShellBranch homeRoutes = StatefulShellBranch(
  navigatorKey: _homeNavigatorKey,
  routes: [
    GoRoute(
      path: HomeView.path,
      name: HomeView.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: HomeView.create(),
      ),
    ),
  ],
);
