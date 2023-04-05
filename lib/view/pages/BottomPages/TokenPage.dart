import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:cryptope/CustomClasses/routes/PageConstants.dart';
import 'package:cryptope/view/widgets/GlobalMainWidget.dart';
import 'package:cryptope/view_model/ProjectViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TokenPage extends StatefulWidget {
  const TokenPage({Key? key}) : super(key: key);

  @override
  State<TokenPage> createState() => _TokenPageState();
}

class _TokenPageState extends State<TokenPage> {
  final projectViewModel = Get.put(ProjectViewModel());

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    projectViewModel.getAllProjects();
  }

  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(SingleChildScrollView(
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
              padding: EdgeInsets.all(AllDimension.eight),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AllDimension.fourty),
                      topLeft: Radius.circular(AllDimension.fourty)),
                  color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        height: MediaQuery.of(context).size.height / 1.02,
                        child: Obx(() => projectViewModel.projectList.isEmpty
                            ? const Center(child: CircularProgressIndicator())
                            : ListView.builder(
                          itemCount: projectViewModel.projectList.length,
                            itemBuilder:(context,index){
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, PageConstants.tokenDetailPage,
                                  arguments: projectViewModel.projectList[index]);
                                },
                                child: Card(
                                  elevation: AllDimension.eight,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: AllDimension.one,
                                        color: AllColors.whiteColor),
                                    borderRadius: BorderRadius.circular(
                                        AllDimension.sixteen),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(AllDimension.eight),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          height: AllDimension.oneThirty,
                                          width:
                                          MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(projectViewModel.projectList[index].image == ""?"":
                                                  projectViewModel.projectList[index].image!),
                                                  fit: BoxFit.cover),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      AllDimension.sixteen))),
                                        ),
                                        SizedBox(height: AllDimension.eight),
                                        Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(projectViewModel.projectList[index].projectName == ""?"":
                                                  projectViewModel.projectList[index].projectName!,
                                                      style: TextStyle(
                                                          fontSize: AllDimension
                                                              .sixteen,
                                                          color: AllColors
                                                              .blackColor,
                                                          fontWeight:
                                                          FontWeight.w700)),
                                                  SizedBox(
                                                    height: AllDimension.fourty,
                                                    child: ListView.builder(
                                                        itemCount: 3,
                                                        scrollDirection:
                                                        Axis.horizontal,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return Container(
                                                              padding:
                                                              EdgeInsets
                                                                  .only(
                                                                left:
                                                                AllDimension
                                                                    .sixteen,
                                                                right:
                                                                AllDimension
                                                                    .sixteen,
                                                                top:
                                                                AllDimension
                                                                    .six,
                                                                bottom:
                                                                AllDimension
                                                                    .six,
                                                              ),
                                                              alignment:
                                                              Alignment
                                                                  .center,
                                                              margin:
                                                              EdgeInsets.all(
                                                                  AllDimension
                                                                      .four),
                                                              decoration: BoxDecoration(
                                                                  color: AllColors
                                                                      .mainThemeColor
                                                                      .withOpacity(
                                                                      0.2),
                                                                  borderRadius:
                                                                  BorderRadius.circular(
                                                                      AllDimension
                                                                          .sixteen)),
                                                              child: Text(
                                                                "Party",
                                                                style:
                                                                TextStyle(
                                                                  color: AllColors
                                                                      .blackColor,
                                                                  fontSize:
                                                                  AllDimension
                                                                      .twelve,
                                                                ),
                                                              ));
                                                        }),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Icon(
                                                Icons
                                                    .keyboard_arrow_right_outlined,
                                                size: AllDimension.thirtyTwo,
                                                color:
                                                AllColors.officialGreyColor)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                        )
                        )
                    )
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
