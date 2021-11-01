import 'package:flutter/material.dart';
import 'package:workshop2/constraints.dart';
import 'package:workshop2/screens/landing_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).popAndPushNamed(LandingPage.routeName);
    });
    return Stack(
      children: [
        Container(
          color: mainThemeColor,
        ),
        const Align(
          alignment: Alignment.center,
          child: Icon(Icons.pool, color: Colors.white, size: 80),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black.withOpacity(0.4)),
          ),
        ),
      ],
    );
  }
}
