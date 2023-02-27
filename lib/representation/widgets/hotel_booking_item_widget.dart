import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/core/constants/color_constants.dart';
import 'package:flutter_app/core/constants/dismention_constants.dart';
import 'package:flutter_app/core/helpers/asset_helper.dart';
import 'package:flutter_app/core/helpers/image_helper.dart';

class HotelBookingItemWidget extends StatelessWidget {
  const HotelBookingItemWidget({super.key, this.icon, this.color, this.title, this.subTitle, this.onTap});

  final String? icon;
  final Color? color;
  final String? title;
  final String? subTitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: (this.color ?? Color(0xffFE9C5E)).withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: ImageHelper.loadFromAsset(this.icon ?? AssetHelper.iconLocation, fit: BoxFit.none),
          ),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.title ?? "", style: TextStyle(fontSize: 12, color: ColorPalette.text2Color),),
              SizedBox(height: 6,),
              Text(this.subTitle ?? "", style: TextStyle(fontSize: 14, color: ColorPalette.text1Color, fontWeight: FontWeight.bold),),
            ],
          )
        ],
      ),
      )
    );
  }
}