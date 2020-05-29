import 'package:flutter/material.dart';

import './login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome!'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              child: Text('Login'),
              onPressed: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
            ),
            RaisedButton(
              child: Text('Signup'),
              onPressed: () => print('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
