import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:cryptope/CustomClasses/AllTitles.dart';
import 'package:cryptope/CustomClasses/routes/PageConstants.dart';
import 'package:cryptope/view/widgets/GlobalMainWidget.dart';
import 'package:flutter/material.dart';

class IntroOnBoardingPage extends StatefulWidget {
  const IntroOnBoardingPage({Key? key}) : super(key: key);

  @override
  State<IntroOnBoardingPage> createState() => _IntroOnBoardingPageState();
}

class _IntroOnBoardingPageState extends State<IntroOnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1.09,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AllImages.background),
                    fit: BoxFit.fill)),
            child: GlobalMainWidget.MyIntroWidget(),
          ),

          SizedBox(height: AllDimension.sixteen),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(AllTitles.alreadyHaveAnAccount,
                  style: TextStyle(
                      color: AllColors.blackColor,
                      fontSize: AllDimension.sixteen)),
              SizedBox(width: AllDimension.eight),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, PageConstants.signInPage);
                },
                child: Text(
                  AllTitles.login,
                  style: TextStyle(
                      color: AllColors.mainThemeColor,
                      fontSize: AllDimension.sixteen),
                ),
              ),
            ],
          ),
          SizedBox(height: AllDimension.sixteen),
        ],
      ),
    ));
  }
}
