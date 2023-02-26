import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/core/constants/dismention_constants.dart';
import 'package:flutter_app/core/helpers/asset_helper.dart';
import 'package:flutter_app/core/helpers/image_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi, James!", style: TextStyle(fontSize: 30),),
              SizedBox(height: 15,),
              Text("Where are you going next?", style: TextStyle(fontSize: 12))
            ],
          ),
          Spacer(),
          Icon(FontAwesomeIcons.bell),
          SizedBox(width: kDefaultPadding,),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ImageHelper.loadFromAsset(AssetHelper.avatar),
          )
        ],
      )
    );
  }
}