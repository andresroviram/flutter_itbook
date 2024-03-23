import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'view/favorite_view.dart';

final _favoriteNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'favorite');

StatefulShellBranch favoriteRoutes = StatefulShellBranch(
  navigatorKey: _favoriteNavigatorKey,
  routes: [
    GoRoute(
      path: FavoriteView.path,
      name: FavoriteView.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: FavoriteView.create(),
      ),
    ),
  ],
);
