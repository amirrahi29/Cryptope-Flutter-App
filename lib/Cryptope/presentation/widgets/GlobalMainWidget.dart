import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:cryptope/CustomClasses/AllTitles.dart';
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

  static Widget TabTitles(String title){
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: AllDimension.thirtyTwo,bottom: AllDimension.eight),
        child: Text(title,
          style: TextStyle(fontSize: AllDimension.twentyTwo,
              color: AllColors.whiteColor,fontWeight: FontWeight.bold),)
    );
  }

  static Widget pageHeader(String title1, String title2){
    return Row(
      children: <Widget>[
        Expanded(
            child: Text(title1,
                style: TextStyle(
                    fontSize: AllDimension.eighteen,
                    fontWeight: FontWeight.bold,
                    color: AllColors.blackColor))),
        InkWell(
          onTap: (){},
          child: Text(
            title2,
            style: TextStyle(
                fontSize: AllDimension.fourteen,
                color: AllColors.officialGreyColor),
          ),
        ),

      ],
    );
  }

  static Widget backgroundWidget(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AllImages.background), fit: BoxFit.fill)),
      child: Container(
        height: AllDimension.oneHundred,
        width: AllDimension.oneHundred,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AllImages.logo))),
      ),
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
