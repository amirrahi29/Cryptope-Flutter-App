import 'package:cryptope/Cryptope/presentation/widgets/GlobalMainWidget.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
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

                        Text("content"),

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
