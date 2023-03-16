import 'package:flutter/material.dart';
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
}
