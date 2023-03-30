import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:flutter/material.dart';

class ProfileWidgets{

  static Widget SocialWidgets(String socialIcon){
    return Container(
      height: AllDimension.thirtyTwo,
      width: AllDimension.thirtyTwo,
      margin: EdgeInsets.all(AllDimension.eight),
      child: Image.asset(socialIcon),
    );
  }

}