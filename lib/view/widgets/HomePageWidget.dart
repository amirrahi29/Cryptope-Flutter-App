import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:cryptope/CustomClasses/routes/PageConstants.dart';
import 'package:cryptope/model/EventModel.dart';
import 'package:flutter/material.dart';

class HomePageWidget{

  static Widget MyCardListItem(BuildContext context,EventList eventList){
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, PageConstants.eventDetailPage,
        arguments: eventList);
      },
      child: Card(
        elevation: AllDimension.eight,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: AllDimension.one,color: AllColors.whiteColor),
          borderRadius: BorderRadius.circular(AllDimension.sixteen),
        ),
        child: Container(
          margin: EdgeInsets.all(AllDimension.eight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              if(eventList.image.isNotEmpty)
              Container(
                height: AllDimension.oneThirty,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(eventList.image),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(AllDimension.sixteen))
                ),
                child: Container(
                  margin: EdgeInsets.only(left: AllDimension.eight,
                      right: AllDimension.eight),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Container(
                          padding: EdgeInsets.all(AllDimension.eight),
                          margin: EdgeInsets.all(AllDimension.four),
                          decoration:BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(AllDimension.sixteen)
                          ),
                          child: Text(eventList.eventStatus==""?"":eventList.eventStatus,
                            style: TextStyle(color: AllColors.whiteColor,
                                fontSize: AllDimension.ten),)
                      ),

                      Container(
                          padding: EdgeInsets.all(AllDimension.eight),
                          margin: EdgeInsets.all(AllDimension.four),
                          decoration:BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(AllDimension.sixteen)
                          ),
                          child: Text(eventList.eventDate==""?"":eventList.eventDate.toString(),
                            style: TextStyle(color: AllColors.whiteColor,
                                fontSize: AllDimension.ten),)
                      )

                    ],
                  ),
                ),
              ),

              SizedBox(height: AllDimension.eight),

              Text(eventList.eventName==""?"":eventList.eventName,
                  style: TextStyle(fontSize: AllDimension.sixteen,
                      color: AllColors.blackColor,
                      fontWeight: FontWeight.w700)),

              Text(eventList.eventType==""?"":eventList.eventType,
                  style: TextStyle(fontSize: AllDimension.fourteen,
                      color: AllColors.mainThemeColor)),

              Text(eventList.eventDescription==""?"":eventList.eventDescription,
                  style: TextStyle(fontSize: AllDimension.fourteen,
                      color: AllColors.officialGreyColor))


            ],
          ),
        ),
      ),
    );
  }

}