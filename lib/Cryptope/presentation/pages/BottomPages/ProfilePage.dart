import 'package:cryptope/Cryptope/presentation/widgets/GlobalMainWidget.dart';
import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:cryptope/CustomClasses/AllTitles.dart';
import 'package:cryptope/CustomClasses/routes/PageConstants.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[

              GlobalMainWidget.backgroundWidget(context),

              GlobalMainWidget.TabTitles("Profile"),

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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: AllDimension.sixteen),
                        Container(
                          height: AllDimension.oneTwenty,
                          width: AllDimension.oneTwenty,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AllImages.user)
                            )
                          ),
                        ),

                        SizedBox(height: AllDimension.eight),

                        Text("Esther Howard",
                        style: TextStyle(fontSize: AllDimension.twentyTwo,
                        fontWeight: FontWeight.bold)),

                        SizedBox(height: AllDimension.twentyFour),

                        //plan card
                        Card(
                          elevation: AllDimension.eight,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: AllDimension.one,color: AllColors.whiteColor),
                            borderRadius: BorderRadius.circular(AllDimension.twelve),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(AllDimension.twelve),
                            child: Row(
                              children: <Widget>[

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[

                                      Text("Plan",
                                      style: TextStyle(fontSize: AllDimension.fourteen,
                                      color: AllColors.officialGreyColor),),
                                      Text("Free Plan",
                                        style: TextStyle(fontSize: AllDimension.fourteen,
                                            color: AllColors.blackColor,
                                        fontWeight: FontWeight.w600),),

                                    ],
                                  ),
                                ),

                                Container(
                                    padding: EdgeInsets.only(
                                      left: AllDimension.sixteen,
                                      right: AllDimension.sixteen,
                                      top: AllDimension.six,
                                      bottom: AllDimension.six,
                                    ),
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(AllDimension.four),
                                    decoration:BoxDecoration(
                                        color: AllColors.mainThemeColor,
                                        borderRadius: BorderRadius.circular(AllDimension.sixteen)
                                    ),
                                    child: Text("Upgrade Now",
                                      style: TextStyle(color: AllColors.whiteColor,
                                        fontSize: AllDimension.twelve,),)
                                )

                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: AllDimension.sixteen),

                        //wallet
                        Card(
                          elevation: AllDimension.eight,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: AllDimension.one,color: AllColors.whiteColor),
                            borderRadius: BorderRadius.circular(AllDimension.twelve),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(AllDimension.twelve),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text(AllTitles.walletAddress,
                                  style: TextStyle(fontSize: AllDimension.fourteen,
                                      color: AllColors.officialGreyColor),),
                                Text("smklcnewfh2834u5435323r23",
                                  style: TextStyle(fontSize: AllDimension.fourteen,
                                      color: AllColors.blackColor,
                                      fontWeight: FontWeight.w600),),

                              ],
                            ),
                          ),
                        ),

                        //connection
                        Card(
                          elevation: AllDimension.eight,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: AllDimension.one,color: AllColors.whiteColor),
                            borderRadius: BorderRadius.circular(AllDimension.twelve),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(AllDimension.twelve),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text(AllTitles.connectedSocialMedia,
                                  style: TextStyle(fontSize: AllDimension.fourteen,
                                      color: AllColors.officialGreyColor),),

                               Row(
                                 children: <Widget>[

                                   InkWell(
                                     onTap: () {},
                                     child: Container(
                                       height: AllDimension.thirtyTwo,
                                       width: AllDimension.thirtyTwo,
                                       margin: EdgeInsets.all(AllDimension.eight),
                                       child: Image.asset(AllImages.twitter),
                                     ),
                                   ),

                                   InkWell(
                                     onTap: () {},
                                     child: Container(
                                       height: AllDimension.thirtyTwo,
                                       width: AllDimension.thirtyTwo,
                                       margin: EdgeInsets.all(AllDimension.eight),
                                       child: Image.asset(AllImages.facebook),
                                     ),
                                   )

                                 ],
                               )

                              ],
                            ),
                          ),
                        )

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

