import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/core/constants/dismention_constants.dart';
import 'package:flutter_app/core/constants/textstyle_constants.dart';
import 'package:flutter_app/core/helpers/asset_helper.dart';
import 'package:flutter_app/core/helpers/image_helper.dart';
import 'package:flutter_app/data/models/hotel_model.dart';
import 'package:flutter_app/representation/widgets/button_widget.dart';
import 'package:flutter_app/representation/widgets/dash_line_widget.dart';

class HotelItemWidget extends StatelessWidget {
  const HotelItemWidget({super.key , required this.hotelModel});

  final HotelModel hotelModel; 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: kMediumMargin),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(kMediumBorderRadius))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(right: kMediumPadding), 
          child: ImageHelper.loadFromAsset(
            AssetHelper.hotel1, 
            width: double.infinity, 
            height: 115, 
            fit: BoxFit.cover, 
            radius: BorderRadius.only(topLeft: Radius.circular(kMediumBorderRadius), bottomRight: Radius.circular(kMediumBorderRadius))),
          ),

        
        Padding(padding: EdgeInsets.symmetric(horizontal:20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("${hotelModel.hotelName}", style: TextStyles.defaultStyle.bold.copyWith(fontSize: 20),),
            SizedBox(height: 10,),
            Row(children: [
              ImageHelper.loadFromAsset(AssetHelper.iconLocation),
              SizedBox(width: 5,),
              Text("${hotelModel.location} - "),
              Expanded(child: Text("${hotelModel.awayKilometers} from destination", style: TextStyles.defaultStyle.subTitleTextColor, maxLines: 1, overflow: TextOverflow.ellipsis,)
              )
              
            ],),
            SizedBox(height: 10,),
            Row(children: [
              ImageHelper.loadFromAsset(AssetHelper.iconStar),
              SizedBox(width: 5,),
              Text("${hotelModel.star}/5"),
              Text("(${hotelModel.numberOfReview} reviews)", style:TextStyles.defaultStyle.subTitleTextColor,)
            ],),
            DashLineWidget(color: Colors.grey,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(children: [
                Text("\$${hotelModel.price}", style: TextStyles.defaultStyle.fontHeader.bold,),
                Text("/night")
              ],),
              Container(
                width: 150,
                child: ButtonWidget(title: "Book a room")) 
            ],)
          ]),
        )
      ]),
    );
  }
}