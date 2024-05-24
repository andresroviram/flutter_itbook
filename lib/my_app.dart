import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:responsive_framework/responsive_framework.dart';

import 'config/theme/theme.dart';
import 'config/routes/cubit/router_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const title = 'GANNAR';

  @override
  Widget build(BuildContext context) {
    GoRouter routerConfig = context.watch<RouterManager>().state;
    return AdaptiveTheme(
      light: AppTheme.light,
      dark: AppTheme.dark,
      initial: AdaptiveThemeMode.dark,
      builder: (theme, darkTheme) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 960, name: TABLET),
          const Breakpoint(start: 961, end: double.infinity, name: DESKTOP),
        ],
        child: MaterialApp.router(
          title: title,
          routerConfig: routerConfig,
          themeMode: ThemeMode.dark,
          builder: BotToastInit(),
          theme: theme,
          darkTheme: darkTheme,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        ),
      ),
    );
  }
}

// Light and dark ColorSchemes made by FlexColorScheme v7.3.1.
// These ColorScheme objects require Flutter 3.7 or later.
const ColorScheme flexSchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xffb86914),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xfff2c18c),
  onPrimaryContainer: Color(0xff14100c),
  secondary: Color(0xffb36832),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffca9d7c),
  onSecondaryContainer: Color(0xff110d0b),
  tertiary: Color(0xffef6c00),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xffffbe93),
  onTertiaryContainer: Color(0xff14100d),
  error: Color(0xff790000),
  onError: Color(0xffffffff),
  errorContainer: Color(0xfff1d8d8),
  onErrorContainer: Color(0xff141212),
  surface: Color(0xfffdfaf8),
  onSurface: Color(0xff090909),
  surfaceContainerHighest: Color(0xffebe6e2),
  onSurfaceVariant: Color(0xff121211),
  outline: Color(0xff7c7c7c),
  outlineVariant: Color(0xffc8c8c8),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xff151311),
  onInverseSurface: Color(0xfff5f5f5),
  inversePrimary: Color(0xffffe1ad),
  surfaceTint: Color(0xffb86914),
);

const ColorScheme flexSchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xffeda85e),
  onPrimary: Color(0xff14110b),
  primaryContainer: Color(0xffb86914),
  onPrimaryContainer: Color(0xfffcf0e2),
  secondary: Color(0xffddab88),
  onSecondary: Color(0xff14110e),
  secondaryContainer: Color(0xffbf7d4e),
  onSecondaryContainer: Color(0xfffdf3ec),
  tertiary: Color(0xffd28f60),
  onTertiary: Color(0xff140f0b),
  tertiaryContainer: Color(0xffb5642c),
  onTertiaryContainer: Color(0xfffcefe6),
  error: Color(0xffcf6679),
  onError: Color(0xff140c0d),
  errorContainer: Color(0xffb1384e),
  onErrorContainer: Color(0xfffbe8ec),
  surface: Color(0xff1c1814),
  onSurface: Color(0xffedecec),
  surfaceContainerHighest: Color(0xff453e36),
  onSurfaceVariant: Color(0xffe1e0df),
  outline: Color(0xff7d7676),
  outlineVariant: Color(0xff2e2c2c),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xfffefaf6),
  onInverseSurface: Color(0xff131313),
  inversePrimary: Color(0xff745636),
  surfaceTint: Color(0xffeda85e),
);
