import 'package:cryptope/Cryptope/presentation/widgets/GlobalMainWidget.dart';
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
          Text("Intro Onboarding Page")
        ],
      ),
    ));
  }
}
