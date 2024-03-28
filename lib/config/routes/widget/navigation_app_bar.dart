import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../components/theme_mode_button.dart';
import '../../../modules/login/login.dart';
import '../cubit/router_manager.dart';
import 'navigation_title.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({super.key, this.scaffoldDrawerKey});
  final GlobalKey<ScaffoldState>? scaffoldDrawerKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const NavigationTitle(),
      leading: IconButton(
        color: Colors.black,
        onPressed: () {
          scaffoldDrawerKey?.currentState?.openDrawer();
        },
        icon: Icon(
          Icons.menu,
          color: Theme.of(context).hintColor,
        ),
      ),
      centerTitle: true,
      elevation: 4,
      actions: [
        const ThemeModeButton.icon(),
        PopupMenuButton<int>(
          icon: const Icon(Icons.account_circle_outlined),
          tooltip: 'profile',
          offset: const Offset(0, 50),
          onSelected: (value) {
            if (value == 0) {
              context.read<RouterManager>().go(LoginView.path);
            }
          },
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 0,
              child: const Row(
                children: [
                  Icon(
                    Icons.logout,
                    size: 18,
                  ),
                  SizedBox(width: 5),
                  Text('Log Out'),
                ],
              ),
              onTap: () {
                // Sign out logic
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
