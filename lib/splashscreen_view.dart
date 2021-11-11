// ignore_for_file: use_key_in_widget_constructors, override_on_non_overriding_member, prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_splashscreen/constants.dart';
// ignore: unused_import
import 'package:flutter_splashscreen/register_view.dart';
import 'package:flutter_splashscreen/login_view.dart';

import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LoginPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff388e3c),
      body: Center(
        child: Image.asset(
          "lib/images/logo.png",
          width: 200.0,
          height: 100.0,
        ),
      ),
    );
  }
}
