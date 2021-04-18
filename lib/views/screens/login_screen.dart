import 'package:bloc_login/blocs/login/bloc/login_bloc.dart';
import 'package:bloc_login/views/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_login/repositories/authentication_repository.dart';

class LoginScreen extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) {
            return LoginBloc(
              authenticationRepository:
                  RepositoryProvider.of<AuthenticationRepository>(context),
            );
          },
          child: LoginForm(),
        ),
      ),
    );
  }
}
