import 'package:dictionary/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<AuthBLoC, AuthState>(
              builder: (context, state) {
                if (state.isLogin) {
                  return Column(
                    children: [
                      const Text('You have an existing account'),
                      FloatingActionButton(
                        child: Icon(Icons.account_box),
                        onPressed: () {
                          BlocProvider.of<AuthBLoC>(context)
                              .add(const AuthEvent.logout());
                        },
                      )
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      const Text('You don\'t have an existing account.'),
                      FloatingActionButton(
                        child: Icon(Icons.account_box),
                        onPressed: () {
                          BlocProvider.of<AuthBLoC>(context)
                              .add(const AuthEvent.login());
                        },
                      ),
                      FloatingActionButton(
                        child: Icon(Icons.new_label),
                        onPressed: () {
                          BlocProvider.of<AuthBLoC>(context)
                              .add(const AuthEvent.singin());
                        },
                      )
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
