import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/auth.provider.dart';

class LoginScreen extends StatelessWidget {

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Click to Login'),
          onPressed: () {
            Provider.of<Auth>(context, listen: false).loginUser();
          },
        ),
      ),
    );
  }
}
