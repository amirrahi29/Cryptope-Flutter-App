import 'package:cryptope/CustomClasses/AllDimension.dart';
import 'package:cryptope/CustomClasses/AllImages.dart';
import 'package:cryptope/CustomClasses/GlobalEquipments.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';

class ContentPageWidget{

  static Widget ProductItems(double width, double height, dynamic productItem){
    return Container(
      width: width,
      child: Card(
        elevation: AllDimension.eight,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(AllDimension.twelve),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Container(
              height: height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(productItem.image),
                      fit: BoxFit.fill
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(AllDimension.twelve),
                    topLeft: Radius.circular(AllDimension.twelve),
                    bottomLeft: Radius.circular(AllDimension.zero),
                    bottomRight: Radius.circular(AllDimension.zero),
                  )
              ),
            ),

            InkWell(
              onTap: (){
                GallerySaver.saveImage(productItem.image)
                    .then((bool? success) {
                     GlobalEquipments.CustomToast("Wow!!", "You have successfully downloaded your image",
                         Colors.white, Colors.green);
                });
              },
              child: Container(
                margin: EdgeInsets.all(AllDimension.eight),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Image.asset(AllImages.download,
                        height: AllDimension.sixteen,width: AllDimension.sixteen),
                    SizedBox(width: AllDimension.eight),
                    Text("Download",style: TextStyle(fontSize: AllDimension.sixteen,
                        fontWeight: FontWeight.bold))

                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

}