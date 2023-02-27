import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/core/constants/color_constants.dart';
import 'package:flutter_app/core/constants/dismention_constants.dart';
import 'package:flutter_app/core/helpers/asset_helper.dart';
import 'package:flutter_app/core/helpers/image_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarContainerWidget extends StatelessWidget {
  const AppBarContainerWidget({super.key, required this.child, this.title, this.titleString, this.implementLeading, this.implementTrailing});

  final Widget child;
  final Widget? title;
  final String? titleString;
  final bool? implementLeading;
  final bool? implementTrailing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 200,
            child: AppBar(
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
                child: this.title ?? Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Icon(
                      FontAwesomeIcons.arrowLeft,
                      color: Color(0xff232323),
                      )
                  ),
                  ),
                  
                  Expanded(
                    child: Center(child: Text(this.titleString ?? "", style: TextStyle(fontSize: 30),))
                  ),
                    if(implementTrailing == true) 
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        child: Icon(
                          FontAwesomeIcons.bars,
                          color: Color(0xff232323),
                        )
                      ),
              
                ]),
              ),
              
              centerTitle: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              toolbarHeight: 90,
              backgroundColor: ColorPalette.backgroundScaffoldColor,
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: Gradients.defaultGradientBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35)
                      )
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: ImageHelper.loadFromAsset(AssetHelper.oval1 )
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: ImageHelper.loadFromAsset(AssetHelper.oval2),
                  ),
                ],
              ),

            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 160),
            padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
            child: child,
          )
        ],
      ),
    );
  }
}