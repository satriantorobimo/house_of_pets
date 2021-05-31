import 'package:flutter/material.dart';
import 'package:house_of_pets/design_system/colors.dart';
import 'package:house_of_pets/design_system/fonts.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'House of Pets',
        style: TextStyle(
            fontFamily: DSFont.LuckiestGuy,
            color: DSColor.thirdYellow,
            fontSize: 40),
      ),
    );
  }
}
