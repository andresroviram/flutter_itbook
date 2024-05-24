import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/services/local_storage.dart';
import '../../../config/injectable/injectable_dependency.dart';
import '../../home/presentation/view/home_view.dart';
import '../../../config/routes/cubit/router_manager.dart';
import '../domain/usecases/login_usecases.dart';
import 'cubit/auth_cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static const String path = '/login';
  static const String name = 'login';

  static Widget create() => BlocProvider(
        lazy: false,
        create: (context) => AuthCubit(
          localStorage: getIt<LocalStorage>(),
          loginUseCase: getIt<LoginUseCase>(),
        ),
        child: const LoginView(),
      );

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late AuthCubit _authCubit;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _authCubit = context.read<AuthCubit>();
    getUser();
  }

  Future<void> getUser() async {
    _usernameController.text = await _authCubit.getUserName();
    _passwordController.text = await _authCubit.getPassword();
  }

  void _fingerprintLogin() {
    // Código para iniciar sesión con huella
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        floatingActionButton: ElevatedButton(
          onPressed: () async {
            _authCubit.createUser(
              _usernameController.text,
              _passwordController.text,
            );
          },
          child: Text('create_user'.tr()),
        ),
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state.success) {
              context.read<RouterManager>().go(HomeView.path);
            }
            if (state.error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Theme.of(context).hintColor,
                ),
              );
              _authCubit.invalidate();
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/img/splash.png',
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          labelText: 'username'.tr(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          labelText: 'password'.tr(),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {},
                          child: Text('restore_password'.tr()),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                _authCubit.login(
                                  _usernameController.text,
                                  _passwordController.text,
                                );
                              },
                              child: Text('login'.tr()),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      IconButton(
                        icon: const Icon(Icons.fingerprint, size: 50),
                        onPressed: _fingerprintLogin,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
