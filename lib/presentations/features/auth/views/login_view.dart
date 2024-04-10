import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:maids_task/presentations/features/auth/widgets/logo_widget.dart';
import 'package:maids_task/presentations/resources/assets_manager.dart';
import 'package:maids_task/presentations/resources/routes_manager.dart';
import 'package:maids_task/presentations/resources/values_manager.dart';

import '../../../../app/depndency_injection.dart';
import '../../../../domain/models/auth_models/requests/login/login_request.dart';
import '../blocs/auth_bloc/auth_bloc.dart';
import '../widgets/login_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late AuthBloc authBloc;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    authBloc = instance<AuthBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LogoContainer(path: ImageAssets.logo),
                SizedBox(height: AppSizeH.s40),
                LoginField(
                  labelText: 'Username',
                  iconData: Icons.email,
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: AppSizeH.s16),
                LoginField(
                  isPassword: true,
                  labelText: 'Password',
                  iconData: Icons.lock,
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: AppSizeH.s24),
                BlocConsumer(
                  bloc: authBloc,
                  listener: (context, AuthState state) {
                    state.mapOrNull(
                      success: (value) {
                        Fluttertoast.showToast(
                            msg: "Success", backgroundColor: Colors.green);
                        context.goNamed(RoutesNames.todosRoute);
                      },
                      error: (value) {
                        Fluttertoast.showToast(
                            msg: value.message, backgroundColor: Colors.red);
                      },
                    );
                  },
                  builder: (context, AuthState state) {
                    return state.maybeWhen(
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      orElse: () {
                        return ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              authBloc.add(
                                AuthEvent.login(
                                  request: LoginRequest(
                                      username: _emailController.text,
                                      password: _passwordController.text),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSizeR.s8),
                            ),
                            minimumSize: Size(double.infinity, AppSizeH.s50),
                          ),
                          child: const Text('Sign In'),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
