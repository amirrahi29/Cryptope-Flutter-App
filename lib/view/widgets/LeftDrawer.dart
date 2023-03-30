import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:flutter/material.dart';

class LeftDrawer extends StatefulWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  _LeftDrawerState createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.1,
        child: Container(
          height: AllDimension.infinity,
          width: AllDimension.infinity,
          padding: EdgeInsets.all(AllDimension.eight),
          child: ListView(
            children: <Widget>[
              Text("Helooooooo")
            ],
          ),
        ));
  }
}
