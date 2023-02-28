import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/core/helpers/asset_helper.dart';
import 'package:flutter_app/core/helpers/image_helper.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, this.color, this.icon});
  final Color? color;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: (this.color ?? Color(0xffFE9C5E)).withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: ImageHelper.loadFromAsset(this.icon ?? AssetHelper.iconLocation, fit: BoxFit.none),
          );
  }
}