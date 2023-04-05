import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:cryptope/CustomClasses/AllTitles.dart';
import 'package:cryptope/model/UserProfileModel.dart';
import 'package:cryptope/view/widgets/GlobalMainWidget.dart';
import 'package:cryptope/view/widgets/ProfileWidgets.dart';
import 'package:cryptope/view_model/UserViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final responseViewModel = Get.put(UserViewModel());

  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
        Obx(()=>
        responseViewModel.profileViewModel.value.responseData == null?
            Center(child: CircularProgressIndicator()):
            SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[

              GlobalMainWidget.backgroundWidget(context),
              GlobalMainWidget.TabTitles("Profile"),

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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: AllDimension.sixteen),

                        responseViewModel.profileViewModel.value.responseData!.image==""?
                        Container(
                          height: AllDimension.oneTwenty,
                          width: AllDimension.oneTwenty,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(AllImages.user)
                              )
                          ),
                        ):
                        Container(
                          height: AllDimension.oneTwenty,
                          width: AllDimension.oneTwenty,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage("${responseViewModel.profileViewModel.value.responseData!.image}")
                              )
                          ),
                        ),

                        SizedBox(height: AllDimension.eight),

                        Text("${responseViewModel.profileViewModel.value.responseData!.name==""?"":
                        responseViewModel.profileViewModel.value.responseData!.name}",
                            style: TextStyle(fontSize: AllDimension.twentyTwo,
                                fontWeight: FontWeight.bold)),

                        SizedBox(height: AllDimension.twentyFour),

                        //plan card
                        Card(
                          elevation: AllDimension.eight,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: AllDimension.one,color: AllColors.whiteColor),
                            borderRadius: BorderRadius.circular(AllDimension.twelve),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(AllDimension.twelve),
                            child: Row(
                              children: <Widget>[

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[

                                      Text("Plan",
                                        style: TextStyle(fontSize: AllDimension.fourteen,
                                            color: AllColors.officialGreyColor),),
                                      Text("Free Plan",
                                        style: TextStyle(fontSize: AllDimension.fourteen,
                                            color: AllColors.blackColor,
                                            fontWeight: FontWeight.w600),),

                                    ],
                                  ),
                                ),

                                Container(
                                    padding: EdgeInsets.only(
                                      left: AllDimension.sixteen,
                                      right: AllDimension.sixteen,
                                      top: AllDimension.six,
                                      bottom: AllDimension.six,
                                    ),
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(AllDimension.four),
                                    decoration:BoxDecoration(
                                        color: AllColors.mainThemeColor,
                                        borderRadius: BorderRadius.circular(AllDimension.sixteen)
                                    ),
                                    child: Text("Upgrade Now",
                                      style: TextStyle(color: AllColors.whiteColor,
                                        fontSize: AllDimension.twelve,),)
                                )

                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: AllDimension.sixteen),

                        //wallet
                        Card(
                          elevation: AllDimension.eight,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: AllDimension.one,color: AllColors.whiteColor),
                            borderRadius: BorderRadius.circular(AllDimension.twelve),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(AllDimension.twelve),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text(AllTitles.walletAddress,
                                  style: TextStyle(fontSize: AllDimension.fourteen,
                                      color: AllColors.officialGreyColor),),
                                Text("${responseViewModel.profileViewModel.value.responseData!.walletAddress==""?"":
                                responseViewModel.profileViewModel.value.responseData!.walletAddress}",
                                  style: TextStyle(fontSize: AllDimension.fourteen,
                                      color: AllColors.blackColor,
                                      fontWeight: FontWeight.w600),),

                              ],
                            ),
                          ),
                        ),

                        //connection
                        Card(
                          elevation: AllDimension.eight,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: AllDimension.one,color: AllColors.whiteColor),
                            borderRadius: BorderRadius.circular(AllDimension.twelve),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(AllDimension.twelve),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text(AllTitles.connectedSocialMedia,
                                  style: TextStyle(fontSize: AllDimension.fourteen,
                                      color: AllColors.officialGreyColor),),

                                Row(
                                  children: <Widget>[

                                    for(int i = 0; i<responseViewModel.profileViewModel.value.responseData!.connectedSocialMediaAccount!.length; i++)

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[

                                          responseViewModel.profileViewModel.value.responseData!.connectedSocialMediaAccount![i].loggedInBy == "google"?
                                          InkWell(
                                            onTap: () {},
                                            child: ProfileWidgets.SocialWidgets(AllImages.google),
                                          ):SizedBox.shrink(),

                                          responseViewModel.profileViewModel.value.responseData!.connectedSocialMediaAccount![i].loggedInBy == "facebook"?
                                          InkWell(
                                            onTap: () {},
                                            child: ProfileWidgets.SocialWidgets(AllImages.facebook),
                                          ):SizedBox.shrink(),

                                          responseViewModel.profileViewModel.value.responseData!.connectedSocialMediaAccount![i].loggedInBy == "twitter"?
                                          InkWell(
                                            onTap: () {},
                                            child: ProfileWidgets.SocialWidgets(AllImages.twitter),
                                          ):SizedBox.shrink(),

                                          responseViewModel.profileViewModel.value.responseData!.connectedSocialMediaAccount![i].loggedInBy == "apple"?
                                          InkWell(
                                            onTap: () {},
                                            child: ProfileWidgets.SocialWidgets(AllImages.apple),
                                          ):SizedBox.shrink()


                                        ],
                                      )

                                  ],
                                )

                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ))
    );
  }
}

