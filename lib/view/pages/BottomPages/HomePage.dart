import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllTitles.dart';
import 'package:cryptope/view/widgets/GlobalMainWidget.dart';
import 'package:cryptope/view/widgets/HomePageWidget.dart';
import 'package:cryptope/view_model/EventViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final eventViewModel = Get.put(EventViewModel());

  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          GlobalMainWidget.backgroundWidget(context),
          GlobalMainWidget.TabTitles("Events"),
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

                    GlobalMainWidget.pageHeader(AllTitles.upcomingEvents,AllTitles.viewAll),

                    SizedBox(height: AllDimension.twelve),

                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Obx(()=>eventViewModel.eventList.isEmpty?
                      Center(child: CircularProgressIndicator()):
                      ListView.builder(
                          itemCount: eventViewModel.eventList.length,
                          itemBuilder: (context,index){
                            return HomePageWidget.MyCardListItem(context,eventViewModel.eventList[index]);
                          }
                      )),
                    ),

                    SizedBox(height: AllDimension.oneHundred),

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
