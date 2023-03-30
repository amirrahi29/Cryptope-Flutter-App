import 'package:cryptope/CustomClasses/AllColors.dart';
import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:flutter/cupertino.dart';

class EventDetailsWidget {
  static Widget timeWidget(
      String time, String timeType, String title, bool isDot) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: isDot == false
                  ? EdgeInsets.only(left: AllDimension.zero)
                  : EdgeInsets.only(left: AllDimension.twenty),
              child: Text(time,
                  style: TextStyle(
                      fontSize: AllDimension.thirty,
                      fontWeight: FontWeight.bold,
                      color: AllColors.blackColor)),
            ),
            SizedBox(width: AllDimension.sixteen),
            isDot == false
                ? Text("")
                : Text(
                    ":",
                    style: TextStyle(
                        fontSize: AllDimension.thirty,
                        fontWeight: FontWeight.bold,
                        color: AllColors.blackColor),
                  ),
          ],
        ),
        Text(timeType,
            style: TextStyle(
                fontSize: AllDimension.sixteen, color: AllColors.blackColor)),
        SizedBox(height: AllDimension.four),
        Container(
            padding: EdgeInsets.only(
              left: AllDimension.sixteen,
              right: AllDimension.sixteen,
              top: AllDimension.six,
              bottom: AllDimension.six,
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.all(AllDimension.four),
            decoration: BoxDecoration(
                color: AllColors.mainThemeColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(AllDimension.sixteen)),
            child: Text(
              title,
              style: TextStyle(
                color: AllColors.blackColor,
                fontWeight: FontWeight.w500,
                fontSize: AllDimension.twelve,
              ),
            ))
      ],
    );
  }
}
