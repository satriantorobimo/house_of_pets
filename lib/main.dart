import 'package:flutter/material.dart';
import 'package:house_of_pets/design_system/colors.dart';

import 'design_system/fonts.dart';
import 'resources/routes.dart';
import 'router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'House of Pets',
        theme: ThemeData(
            primaryColor: DSColor.primaryPurple, fontFamily: DSFont.Poppins),
        onGenerateRoute: Routers.generateRoute,
        initialRoute: splashRoute);
  }
}
