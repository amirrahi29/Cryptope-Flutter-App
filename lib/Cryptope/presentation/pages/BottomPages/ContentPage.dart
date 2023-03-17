import 'package:cryptope/Cryptope/presentation/widgets/ContentPageWidget.dart';
import 'package:cryptope/Cryptope/presentation/widgets/GlobalMainWidget.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:cryptope/CustomClasses/AllTitles.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[

              GlobalMainWidget.backgroundWidget(context),

              GlobalMainWidget.TabTitles("Content"),

              Positioned(
                top: AllDimension.eightyFour,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(AllDimension.twenty),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AllDimension.fourty),
                          topLeft: Radius.circular(AllDimension.fourty)),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        //Gift
                        GlobalMainWidget.pageHeader(AllTitles.gits,AllTitles.viewAll),
                        SizedBox(height: AllDimension.twelve),
                        SizedBox(
                          height: AllDimension.twoTen,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return ContentPageWidget.ProductItems(AllDimension.twoFifty,AllDimension.oneSixty);
                              }
                          ),
                        ),

                        //News
                        SizedBox(height: AllDimension.twelve),
                        GlobalMainWidget.pageHeader(AllTitles.news,AllTitles.viewAll),
                        SizedBox(height: AllDimension.twelve),
                        SizedBox(
                          height: AllDimension.twoThirty,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return ContentPageWidget.ProductItems(AllDimension.threeHundred,AllDimension.oneEighty);
                              }
                          ),
                        ),


                        //coins
                        SizedBox(height: AllDimension.twelve),
                        GlobalMainWidget.pageHeader(AllTitles.coins,AllTitles.viewAll),
                        SizedBox(height: AllDimension.twelve),
                        SizedBox(
                          height: AllDimension.twoTen,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return ContentPageWidget.ProductItems(AllDimension.twoTen,AllDimension.oneSixty);
                              }
                          ),
                        ),

                        SizedBox(height: AllDimension.eightyFour),

                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ));
  }
}
