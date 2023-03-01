import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/helpers/asset_helper.dart';
import 'package:flutter_app/core/helpers/image_helper.dart';

class HotelSearchResultItem extends StatelessWidget {
  const HotelSearchResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ImageHelper.loadFromAsset(AssetHelper.hotel1, radius: BorderRadius.only(bottomRight: Radius.circular(12))),
              Positioned(
                top: 10,
                right: 10,
                child: ImageHelper.loadFromAsset(AssetHelper.iconHeart),
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Text("Title"),
                Row(children: [
                  
                ],)
              ],)

          )
        ],
      ),
    );
  }
}