import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/core/helpers/asset_helper.dart';
import 'package:flutter_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app/representation/widgets/button_widget.dart';
import 'package:flutter_app/representation/widgets/hotel_booking_item_widget.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});

  static const String routeName = "hotel_booking_screen";

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();  
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBarContainerWidget(
        child: Container(
          padding: EdgeInsets.only(top: 65),
          child: Column(
            children: [
              HotelBookingItemWidget(
                icon: AssetHelper.iconLocation,
                color: Color(0xffFE9C5E),
                title: "Destination",
                subTitle: "South Korea",
                onTap: () {
                  print("Tap Location");
                },
              ),
              SizedBox(height: 20,),
              HotelBookingItemWidget(
                icon: AssetHelper.iconDate,
                color: Color(0xffF77777),
                title: "Select Date",
                subTitle: "13 Feb - 18 Feb 2021",
                onTap: () {
                  print("Tap Date");
                },
              ),
              SizedBox(height: 20,),
              HotelBookingItemWidget(
                icon: AssetHelper.iconBed,
                color: Color(0xff3EC8BC),
                title: "Guest and Room",
                subTitle: "2 Guest, 1 Room",
                onTap: () {
                  print("Tap Guest and Room");
                },
              ),
              SizedBox(height: 20,),
              ButtonWidget(title: "Search", onTap: (){
                print("Tap Search Booking");
              },)
            ],
          ),
        ),
        titleString: "Hotel Booking",
        implementLeading: true, 
      ),
    );
  }
}