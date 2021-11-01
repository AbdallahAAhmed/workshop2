import 'package:flutter/material.dart';
import 'package:workshop2/screens/landing_screen.dart';
import 'package:workshop2/screens/list_screen.dart';
import 'package:workshop2/screens/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        ListPage.routeName : (context) => const ListPage(),
        LandingPage.routeName : (context) => const LandingPage(),
      },
    );
  }
}
