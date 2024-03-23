import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/common/database/database_manager.dart';
import '../home/view/home_view.dart';
import '../navigation/cubit/router_manager.dart';
import 'cubit/auth_cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static const String path = '/login';
  static const String name = 'login';

  static Widget create() => BlocProvider(
        lazy: false,
        create: (context) => AuthCubit(
          db: context.read<DatabaseManager>(),
        ),
        child: const LoginView(),
      );

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late AuthCubit _authCubit;
  final _usernameController = TextEditingController(text: 'test');
  final _passwordController = TextEditingController(text: '123456');

  @override
  void initState() {
    super.initState();
    _authCubit = context.read<AuthCubit>();
  }

  void _fingerprintLogin() {
    // Código para iniciar sesión con huella
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () async {
          _authCubit.createUser(
            _usernameController.text,
            _passwordController.text,
          );
        },
        child: const Text('Create User'),
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
                backgroundColor: Colors.white,
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
          return Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/splash.png',
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        labelText: 'Username',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Restore password'),
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
                            child: const Text('Log in'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    IconButton(
                      icon: const Icon(Icons.fingerprint, size: 50),
                      onPressed: () => _fingerprintLogin(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
