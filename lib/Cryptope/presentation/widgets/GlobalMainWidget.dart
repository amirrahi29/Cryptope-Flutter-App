import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'LeftDrawer.dart';

class GlobalMainWidget {
  static Widget globalMainWidget(Widget myWidget,
      {BottomNavigationBar? bottomNavigationBar}) {
    return SafeArea(
      child: Scaffold(
          drawer: LeftDrawer(),
          body: myWidget,
          bottomNavigationBar: bottomNavigationBar),
    );
  }

  static Widget MyIntroWidget() {
    return SizedBox(
        height: 150.0,
        width: 300.0,
        child: Carousel(
          dotSize: AllDimension.eight,
          dotIncreaseSize: AllDimension.two,
          dotIncreasedColor: AllColors.yellowColor,
          autoplay: true,
          animationDuration: Duration(seconds: 1),
          dotBgColor: AllColors.transparent,
          images: [
            // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
            for(int i = 0; i<3; i++)
            Container(
              height: AllDimension.oneHundred,
              width: AllDimension.oneHundred,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AllImages.logo)
                )
              ),
            )
          ],
        )
    );
  }
}
