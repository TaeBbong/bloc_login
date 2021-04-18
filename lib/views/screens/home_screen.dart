import 'package:bloc_login/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(
              builder: (context) {
                final userId = context
                    .select((AuthenticationBloc bloc) => bloc.state.user);
                return Text('UserId: $userId');
              },
            ),
            ElevatedButton(
              child: Text('Logout'),
              onPressed: () {
                context
                    .read<AuthenticationBloc>()
                    .add(AuthenticationLogoutRequested());
              },
            )
          ],
        ),
      ),
    );
  }
}
