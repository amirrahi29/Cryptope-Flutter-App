import 'package:cryptope/Cryptope/presentation/widgets/GlobalMainWidget.dart';
import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:flutter/material.dart';

class TokenPage extends StatefulWidget {
  const TokenPage({Key? key}) : super(key: key);

  @override
  State<TokenPage> createState() => _TokenPageState();
}

class _TokenPageState extends State<TokenPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[

              GlobalMainWidget.backgroundWidget(context),
              GlobalMainWidget.TabTitles("Token"),

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

                        Card(
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
                                ),

                                SizedBox(height: AllDimension.eight),

                                Row(
                                  children: <Widget>[

                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          Text("Helix pro",
                                              style: TextStyle(fontSize: AllDimension.sixteen,
                                                  color: AllColors.blackColor,
                                                  fontWeight: FontWeight.w700)),

                                          SizedBox(
                                            height: AllDimension.fourty,
                                            child: ListView.builder(
                                                itemCount: 3,
                                                scrollDirection: Axis.horizontal,
                                                itemBuilder: (context,index){
                                                  return Container(
                                                      padding: EdgeInsets.only(
                                                        left: AllDimension.sixteen,
                                                        right: AllDimension.sixteen,
                                                        top: AllDimension.six,
                                                        bottom: AllDimension.six,
                                                      ),
                                                      alignment: Alignment.center,
                                                      margin: EdgeInsets.all(AllDimension.four),
                                                      decoration:BoxDecoration(
                                                          color: AllColors.mainThemeColor.withOpacity(0.2),
                                                          borderRadius: BorderRadius.circular(AllDimension.sixteen)
                                                      ),
                                                      child: Text("Party",
                                                        style: TextStyle(color: AllColors.blackColor,
                                                            fontSize: AllDimension.twelve,),)
                                                  );
                                                }
                                            ),
                                          )

                                        ],
                                      ),
                                    ),

                                    Icon(Icons.keyboard_arrow_right_outlined,size: AllDimension.thirtyTwo,
                                    color: AllColors.officialGreyColor)



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
