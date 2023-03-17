import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:flutter/material.dart';

class HomePageWidget{

  static Widget MyCardListItem(BuildContext context){
    return Card(
      elevation: AllDimension.eight,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(AllDimension.sixteen),
      ),
      child: Container(
        margin: EdgeInsets.all(AllDimension.eight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Container(
              height: AllDimension.oneThirty,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AllImages.coinImage),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(AllDimension.sixteen))
              ),
              child: Container(
                margin: EdgeInsets.only(left: AllDimension.eight,
                    right: AllDimension.eight),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Container(
                        padding: EdgeInsets.all(AllDimension.eight),
                        margin: EdgeInsets.all(AllDimension.eight),
                        decoration:BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(AllDimension.sixteen)
                        ),
                        child: Text("Earn coin",
                          style: TextStyle(color: AllColors.whiteColor,
                              fontSize: AllDimension.ten),)
                    ),

                    Container(
                        padding: EdgeInsets.all(AllDimension.eight),
                        margin: EdgeInsets.all(AllDimension.eight),
                        decoration:BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(AllDimension.sixteen)
                        ),
                        child: Text("Friday 27th Jan 2023",
                          style: TextStyle(color: AllColors.whiteColor,
                              fontSize: AllDimension.ten),)
                    )

                  ],
                ),
              ),
            ),

            SizedBox(height: AllDimension.eight),

            Text("Grow the coins",
                style: TextStyle(fontSize: AllDimension.sixteen,
                    color: AllColors.blackColor,
                    fontWeight: FontWeight.w700)),

            Text("New world of coins",
                style: TextStyle(fontSize: AllDimension.fourteen,
                    color: AllColors.mainThemeColor)),

            Text("Lorem ipsum dolor sit ametcon sectetur. Lectus curabitur.",
                style: TextStyle(fontSize: AllDimension.fourteen,
                    color: AllColors.officialGreyColor))


          ],
        ),
      ),
    );
  }

}