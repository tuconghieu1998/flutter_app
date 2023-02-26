import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/core/constants/dismention_constants.dart';
import 'package:flutter_app/core/helpers/asset_helper.dart';
import 'package:flutter_app/core/helpers/image_helper.dart';
import 'package:flutter_app/representation/widgets/app_bar_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/home_app_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget _buildItemCategory(String icon, String title, Color color, Function() onTap) {
    return Expanded(
      child: GestureDetector(
      onTap: onTap,
      child: Column(
      children: [
        Container(
            width: double.infinity,
            height: 75,
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: ImageHelper.loadFromAsset(
              icon,
              fit: BoxFit.none
            ),
          ),
          
        SizedBox(height: 15,),
        Text(title, style: TextStyle(fontSize: 14),)
      ],
    ),
    )) ;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBarContainerWidget(
        child: Container(
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search your destination",
                prefixIcon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.black,
                  size: kDefaultIconSize
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide.none
                )
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildItemCategory(AssetHelper.iconHotel, "Hotel", Color(0xffFE9C5E), () {
                  print("Tap Hotel");
                }),
                SizedBox(width: 15),
                _buildItemCategory(AssetHelper.iconPlane, "Flights", Color(0xffF77777), () {
                  print("Tap Flights");
                }),
                SizedBox(width: 15),
                _buildItemCategory(AssetHelper.iconHotelPlane, "All", Color(0xff3EC8BC), () {
                  print("Tap All");
                })
              ],
            )
          ]),
        ),
        title: HomeAppBarWidget(),
      ),
    );
  }
}