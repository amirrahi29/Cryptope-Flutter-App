import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:flutter/material.dart';

class LoginSignUpWidgets{

  static Widget bottomText(BuildContext context,String firstText,String lastText, String pageName){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(firstText,
            style: TextStyle(
                color: AllColors.blackColor,
                fontSize: AllDimension.sixteen)),
        SizedBox(width: AllDimension.eight),
        InkWell(
          onTap: () {
            Navigator.pushNamed(
                context, pageName);
          },
          child: Text(
            lastText,
            style: TextStyle(
                color: AllColors.mainThemeColor,
                fontSize: AllDimension.sixteen),
          ),
        ),
      ],
    );
  }

}