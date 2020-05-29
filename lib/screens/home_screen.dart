import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/auth.provider.dart';

class HomeScreen extends StatelessWidget {

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Logout'),
          onPressed: () => Provider.of<Auth>(context, listen: false).logout(),
        ),
      ),
    );
  }
}
