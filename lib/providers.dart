import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_app.dart';
import 'config/routes/cubit/router_manager.dart';

class ProvidersBloc extends StatelessWidget {
  const ProvidersBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RouterManager(),
        ),
      ],
      child: EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('es', 'CO')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en', 'US'),
        child: const MyApp(),
      ),
    );
  }
}
