import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/core/constants/color_constants.dart';
import 'package:flutter_app/core/constants/dismention_constants.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const String routeName = "main_app";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Container(color: Colors.amber),
          Container(color: Colors.blue),
          Container(color: Colors.brown),
          Container(color: Colors.cyan),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: ColorPalette.primaryColor,
        unselectedItemColor: ColorPalette.primaryColor.withOpacity(0.2),
        margin: const EdgeInsets.symmetric(horizontal: kMediumPadding, vertical: kDefaultPadding),
        items: [
        SalomonBottomBarItem(
          icon: const Icon(
            FontAwesomeIcons.house,
            size: kDefaultIconSize
          ),
          title: Text("Home")
        ),
        SalomonBottomBarItem(
          icon: const Icon(
            FontAwesomeIcons.solidHeart,
            size: kDefaultIconSize
          ),
          title: Text("Likes")
        ),
        SalomonBottomBarItem(
          icon: const Icon(
            FontAwesomeIcons.briefcase,
            size: kDefaultIconSize
          ),
          title: Text("Booking")
        ),
        SalomonBottomBarItem(
          icon: const Icon(
            FontAwesomeIcons.solidUser,
            size: kDefaultIconSize
          ),
          title: Text("Profile")
        ),
      ],),
    );
  }
}