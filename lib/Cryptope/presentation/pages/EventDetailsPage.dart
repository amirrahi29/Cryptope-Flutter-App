import 'package:cryptope/Cryptope/presentation/widgets/EventDetailsWidget.dart';
import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:cryptope/CustomClasses/AllTitles.dart';
import 'package:flutter/material.dart';
import '../widgets/GlobalMainWidget.dart';

class EventDetailsPage extends StatefulWidget {
  const EventDetailsPage({Key? key}) : super(key: key);

  @override
  State<EventDetailsPage> createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return GlobalMainWidget.globalMainWidget(
       Stack(
         clipBehavior: Clip.none,
         children: <Widget>[

           SingleChildScrollView(
             child: Column(
               children: <Widget>[

                 Stack(
                   clipBehavior: Clip.none,
                   children: <Widget>[

                     Container(
                       height: AllDimension.threeFifty,
                       decoration: BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage(AllImages.details),
                               fit: BoxFit.fill
                           ),
                           borderRadius: BorderRadius.only(
                             bottomLeft: Radius.circular(AllDimension.twentyFour),
                             bottomRight: Radius.circular(AllDimension.twentyFour),
                           )
                       ),
                     ),

                     Positioned(
                       top: AllDimension.threeHundred,
                       left: AllDimension.sixteen,
                       right: AllDimension.sixteen,
                       child: Card(
                         elevation: AllDimension.eight,
                         shape: RoundedRectangleBorder(
                           side: BorderSide(width: AllDimension.one,color: AllColors.whiteColor),
                           borderRadius: BorderRadius.circular(AllDimension.sixteen),
                         ),
                         child: Container(
                           width: MediaQuery.of(context).size.width,
                           padding: EdgeInsets.all(AllDimension.fourteen),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[

                               Text("Share Bangla Concert",
                                 style: TextStyle(fontSize: AllDimension.sixteen,
                                     color: AllColors.blackColor,fontWeight: FontWeight.bold),),
                               Text("Influencera music",
                                   style: TextStyle(fontSize: AllDimension.fourteen,
                                       color: AllColors.mainThemeColor)),

                             ],
                           ),
                         ),
                       ),
                     ),

                     Positioned(
                         left: AllDimension.eight,
                         top: AllDimension.twelve,
                         child: InkWell(
                           onTap: (){
                             Navigator.pop(context);
                           },
                           child: Container(
                             padding: EdgeInsets.all(AllDimension.eight),
                             decoration: BoxDecoration(
                                 color: AllColors.officialGreyColor.withOpacity(0.4),
                                 borderRadius: BorderRadius.circular(AllDimension.oneHundred)
                             ),
                             child: Icon(Icons.arrow_back_ios_new_outlined,
                               color: AllColors.whiteColor,size: AllDimension.sixteen,),
                           ),
                         )
                     )

                   ],
                 ),

                 SizedBox(height: AllDimension.fourty),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[

                     EventDetailsWidget.timeWidget("4","Days","Party",true),
                     EventDetailsWidget.timeWidget("23","Hours","Rock",true),
                     EventDetailsWidget.timeWidget("18","Minute","Helloween",false),

                   ],
                 ),

                 Container(
                   width: MediaQuery.of(context).size.width,
                   margin: EdgeInsets.only(top: AllDimension.sixteen,
                       bottom: AllDimension.eight),
                   decoration: BoxDecoration(
                     border: Border(
                       bottom: BorderSide(color: AllColors.officialGreyColor.withOpacity(0.3)),
                     ),
                   ),
                 ),

                 Container(
                   margin: EdgeInsets.all(AllDimension.eight),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[

                       Row(
                         children: <Widget>[

                           Image.asset(AllImages.calender,height: AllDimension.twenty,width: AllDimension.twenty),
                           SizedBox(width: AllDimension.eight),
                           Text("Friday, 27 Feb 2023",
                             style: TextStyle(color: AllColors.blackColor,fontSize: AllDimension.fourteen,
                                 fontWeight: FontWeight.w500),)

                         ],
                       ),

                       SizedBox(height: AllDimension.sixteen),

                       Text(AllTitles.descriptions,
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: AllDimension.sixteen
                           )),

                       SizedBox(height: AllDimension.eight),

                       Text("Lorem ipsum dolor sit amet consectetur. Vulputate quisque purus "
                           "vitae at diam viverra. Lobortis nunc consequat magna est montes. "
                           "Sem vulputate pharetra suscipit malesuada. Vitae tellus aliquet "
                           "aliquet eget iaculis porttitor. Tellus id risus velit leo auctor "
                           "penatibus id egestas. Vitae ut pharetra in viverra vitae at sed eu. "
                           "Tortor nulla duis fermentum fames diam tellus orci.egestas. Vitae ut "
                           "pharetra in viverra vitae at sed eu. Tortor nulla duis fermentum fames "
                           "diam tellus orci.",
                           style: TextStyle(color: AllColors.officialGreyColor,fontSize: AllDimension.fourteen))

                     ],
                   ),
                 ),

                 SizedBox(height: AllDimension.eightyFour),

               ],
             ),
           ),

           Positioned(
             bottom: AllDimension.sixteen,
               left: AllDimension.zero,
               right: AllDimension.zero,
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 margin: EdgeInsets.only(
                     left: AllDimension.sixteen,
                     right: AllDimension.sixteen),
                 padding: EdgeInsets.all(AllDimension.sixteen),
                 decoration: BoxDecoration(
                     color: AllColors.yellowColor,
                     borderRadius: BorderRadius.circular(AllDimension.oneHundred)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[

                     Expanded(
                       child: Text("Subscribe",
                           textAlign: TextAlign.center,
                           style: TextStyle(
                               fontSize: AllDimension.eighteen,
                               fontWeight: FontWeight.bold,
                           ),
                       ),
                     ),

                     Image.asset(AllImages.bell,height: AllDimension.twentyFour,width: AllDimension.twentyFour)

                   ],
                 ),
               )
           )

         ],
       )
    );
  }
}
