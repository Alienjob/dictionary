import 'package:flutter/material.dart';

class LogoPage extends StatelessWidget {
  static const routeName = '/logo';

  const LogoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary'),
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Beautiful logo page'),
            ],
          ),
        ),
      ),
    );
  }
}
