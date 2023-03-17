import 'package:cryptope/Cryptope/presentation/pages/BottomPages/ContentPage.dart';
import 'package:cryptope/Cryptope/presentation/pages/BottomPages/HomePage.dart';
import 'package:cryptope/Cryptope/presentation/pages/BottomPages/ProfilePage.dart';
import 'package:cryptope/Cryptope/presentation/pages/BottomPages/TokenPage.dart';
import 'package:flutter/material.dart';
import 'AllColors.dart';
import 'AllDimension.dart';
import 'AllImages.dart';

class BottomTabItems {
  // List<TabItem> items = [];

  //tab index
  int visit = 0;
  int selectedTab = 0;

  //tab pages
  List<Widget> allBottomPages = [
    HomePage(),
    TokenPage(),
    ContentPage(),
    ProfilePage()
  ];

  //tabs icons and titles
  List<BottomNavigationBarItem> allTabs(int i,selectedColor) {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset(AllImages.home,
            color: selectedColor == 0?AllColors.mainThemeColor:AllColors.officialGreyColor,
            height: selectedColor == 0?AllDimension.twentyFour:AllDimension.twentyFour
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(AllImages.token,
            color: selectedColor == 1?AllColors.mainThemeColor:AllColors.officialGreyColor,
            height: selectedColor == 1?AllDimension.twentyFour:AllDimension.twentyFour
        ),
        label: 'Token',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(AllImages.content,
            color: selectedColor == 2?AllColors.mainThemeColor:AllColors.officialGreyColor,
            height: selectedColor == 2?AllDimension.twentyFour:AllDimension.twentyFour
        ),
        label: 'Content',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(AllImages.profile,
            color: selectedColor == 3?AllColors.mainThemeColor:AllColors.officialGreyColor,
            height: selectedColor == 3?AllDimension.twentyFour:AllDimension.twentyFour
        ),
        label: 'Profile',
      ),
    ];
  }
}