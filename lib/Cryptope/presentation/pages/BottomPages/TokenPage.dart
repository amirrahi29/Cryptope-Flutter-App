import 'package:cryptope/Cryptope/presentation/widgets/GlobalMainWidget.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
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

                        Text("token"),

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
