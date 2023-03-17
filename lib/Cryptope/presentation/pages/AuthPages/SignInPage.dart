import 'package:cryptope/Cryptope/presentation/widgets/GlobalMainWidget.dart';
import 'package:cryptope/Cryptope/presentation/widgets/LoginSignUpWidgets.dart';
import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllTitles.dart';
import 'package:cryptope/CustomClasses/CutomLists.dart';
import 'package:cryptope/CustomClasses/routes/PageConstants.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[

          GlobalMainWidget.backgroundWidget(context),

          Positioned(
            bottom: 0,
            child: Container(
              height: AllDimension.twoFourty,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(AllDimension.twenty),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AllDimension.fourty),
                      topLeft: Radius.circular(AllDimension.fourty)),
                  color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      AllTitles.welcomeBack,
                      style: TextStyle(
                          color: AllColors.officialBlackColor,
                          fontSize: AllDimension.twentySix,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      AllTitles.loginToContinue,
                      style: TextStyle(
                          color: AllColors.officialGreyColor,
                          fontSize: AllDimension.sixteen),
                    ),
                    SizedBox(
                      height: AllDimension.sixteen,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (int i = 0; i < CutomLists.socialLists.length; i++)
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, PageConstants.dashboardPage);
                            },
                            child: Container(
                              height: AllDimension.fourtyFive,
                              width: AllDimension.fourtyFive,
                              margin: EdgeInsets.all(AllDimension.eight),
                              child: Image.asset(CutomLists.socialLists[i]),
                            ),
                          )
                      ],
                    ),
                    SizedBox(
                      height: AllDimension.sixteen,
                    ),

                    LoginSignUpWidgets.bottomText(context,AllTitles.dontHaveAnAccount,
                        AllTitles.signup,PageConstants.signUpPage)

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
