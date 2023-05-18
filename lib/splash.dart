import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ziggy/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.orange,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
