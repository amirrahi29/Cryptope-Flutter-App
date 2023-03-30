import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllTitles.dart';
import 'package:cryptope/view/widgets/ContentPageWidget.dart';
import 'package:cryptope/view/widgets/GlobalMainWidget.dart';
import 'package:cryptope/view_model/ContentViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {

  final contentViewModel = Get.put(ContentViewModel());

  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        SingleChildScrollView(
          child: Obx(()=>Stack(
            clipBehavior: Clip.none,
            children: <Widget>[

              GlobalMainWidget.backgroundWidget(context),

              GlobalMainWidget.TabTitles("Content"),

              Positioned(
                top: AllDimension.eightyFour,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(AllDimension.eight),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AllDimension.fourty),
                          topLeft: Radius.circular(AllDimension.fourty)),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        SizedBox(height: AllDimension.sixteen),
                        //Gif
                        GlobalMainWidget.pageHeader(AllTitles.gifs,AllTitles.viewAll),
                        SizedBox(height: AllDimension.eight),
                        SizedBox(
                          height: AllDimension.twoTen,
                          child: contentViewModel.gifList.isEmpty?
                              Center(
                                child: CircularProgressIndicator(),
                              ): ListView.builder(
                              itemCount: contentViewModel.gifList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return ContentPageWidget.ProductItems(AllDimension.twoFifty,AllDimension.oneSixty,contentViewModel.gifList[index]);
                              }
                          ),
                        ),

                        //News
                        SizedBox(height: AllDimension.twelve),
                        GlobalMainWidget.pageHeader(AllTitles.news,AllTitles.viewAll),
                        SizedBox(height: AllDimension.eight),
                        SizedBox(
                          height: AllDimension.twoThirty,
                          child:contentViewModel.newsList.isEmpty?
                          Center(
                            child: CircularProgressIndicator(),
                          ):  ListView.builder(
                              itemCount: contentViewModel.newsList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return ContentPageWidget.ProductItems(AllDimension.threeHundred,AllDimension.oneEighty,contentViewModel.newsList[index]);
                              }
                          ),
                        ),


                        //coins
                        SizedBox(height: AllDimension.twelve),
                        GlobalMainWidget.pageHeader(AllTitles.coins,AllTitles.viewAll),
                        SizedBox(height: AllDimension.eight),
                        SizedBox(
                          height: AllDimension.twoTen,
                          child: contentViewModel.coinsList.isEmpty?
                          Center(
                            child: CircularProgressIndicator(),
                          ): ListView.builder(
                              itemCount: contentViewModel.coinsList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return ContentPageWidget.ProductItems(AllDimension.twoTen,AllDimension.oneSixty,contentViewModel.coinsList[index]);
                              }
                          ),
                        ),

                        SizedBox(height: AllDimension.oneFifty),

                      ],
                    ),
                  ),
                ),
              ),

            ],
          )),
        ));
  }
}
