import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import './providers/auth.provider.dart';

import './screens/welcome_screen.dart';
import './screens/login_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Auth>(
      create: (_) => Auth(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Consumer<Auth>(
          builder: (_, auth, __) {
            print('main.dart logged in: ${auth.loggedIn}');
            if(auth.loggedIn) return HomeScreen();
            return WelcomeScreen();
          },
        ),
        routes: {
          LoginScreen.routeName: (ctx) => LoginScreen(),
        },
      ),
    );
  }
}
