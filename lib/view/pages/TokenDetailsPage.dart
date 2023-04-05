import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:cryptope/CustomClasses/AllTitles.dart';
import 'package:cryptope/model/ProjectModel.dart';
import 'package:cryptope/view/widgets/GlobalMainWidget.dart';
import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

class TokenDetailsPage extends StatefulWidget {

  final ProjectList projectList;

  const TokenDetailsPage({Key? key,required this.projectList}) : super(key: key);

  @override
  State<TokenDetailsPage> createState() => _TokenDetailsState();
}

class _TokenDetailsState extends State<TokenDetailsPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.projectList.projectName);
  }

  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[

                  // Container(
                  //   height: AllDimension.threeFifty,
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //           image: AssetImage(AllImages.details),
                  //           fit: BoxFit.fill),
                  //       borderRadius: BorderRadius.only(
                  //         bottomLeft: Radius.circular(AllDimension.twentyFour),
                  //         bottomRight: Radius.circular(AllDimension.twentyFour),
                  //       )),
                  // ),

                  Container(
                      height: AllDimension.threeFifty,
                      child: Carousel(
                          dotSize: AllDimension.eight,
                          dotIncreaseSize: AllDimension.two,
                          dotIncreasedColor: AllColors.yellowColor,
                          autoplay: true,
                          animationDuration: Duration(seconds: 1),
                          dotBgColor: AllColors.transparent,
                          images: [
                            // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                            for (int i = 0; i < 3; i++)
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(AllImages.details),
                                          fit: BoxFit.fill)),
                                ),
                              )
                          ])),

                  Positioned(
                      left: AllDimension.eight,
                      top: AllDimension.twelve,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(AllDimension.eight),
                          decoration: BoxDecoration(
                              color:
                                  AllColors.officialGreyColor.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(
                                  AllDimension.oneHundred)),
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: AllColors.whiteColor,
                            size: AllDimension.sixteen,
                          ),
                        ),
                      ))
                ],
              ),
              Container(
                margin: EdgeInsets.all(AllDimension.eight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.projectList.projectName==""?""
                        :widget.projectList.projectName!,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: AllDimension.twentyEight)),
                    SizedBox(height: AllDimension.sixteen),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Market Cap",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AllDimension.sixteen)),
                            Text("\$1000000",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AllDimension.twentyEight)),
                          ],
                        ),
                        SizedBox(width: AllDimension.twenty),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("CMP",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AllDimension.sixteen)),
                            Text("\$2899",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AllDimension.twentyEight)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: AllDimension.sixteen),
                    Text(AllTitles.detailsAboutProject,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: AllDimension.sixteen,
                            color: AllColors.blackColor)),
                    SizedBox(height: AllDimension.eight),
                    Text(widget.projectList.projectDetails==""?""
                        :widget.projectList.projectDetails!,
                        style: TextStyle(
                            color: AllColors.officialGreyColor,
                            fontSize: AllDimension.fourteen))
                  ],
                ),
              ),
              SizedBox(height: AllDimension.eightyFour),
            ],
          ),
        ),
        Positioned(
            bottom: AllDimension.eight,
            child: Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 3.5),
              child: Card(
                elevation: AllDimension.eight,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: AllDimension.one, color: AllColors.whiteColor),
                  borderRadius: BorderRadius.circular(AllDimension.sixteen),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(AllDimension.sixteen),
                        child: Image.asset(AllImages.like,
                            height: AllDimension.thirty,
                            width: AllDimension.thirty),
                      ),
                      VerticalDivider(
                        color: AllColors.officialGreyColor,
                        thickness: AllDimension.one,
                      ),
                      Container(
                        margin: EdgeInsets.all(AllDimension.sixteen),
                        child: Image.asset(AllImages.dislike,
                            height: AllDimension.thirty,
                            width: AllDimension.thirty),
                      ),
                    ],
                  ),
                ),
              ),
            ))
      ],
    ));
  }
}
