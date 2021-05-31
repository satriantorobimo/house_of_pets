import 'dart:async';

import 'package:flutter/material.dart';
import 'package:house_of_pets/design_system/colors.dart';
import 'package:house_of_pets/feature/splash/presentation/widget/splash_widget.dart';
import 'package:house_of_pets/resources/routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _loadingData();
    super.initState();
  }

  _loadingData() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, bottomNavbar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: DSColor.primaryPurple, body: SplashWidget());
  }
}
