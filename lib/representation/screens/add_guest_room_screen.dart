import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/core/helpers/asset_helper.dart';
import 'package:flutter_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app/representation/widgets/button_widget.dart';

import '../widgets/guest_and_room_booking_item.dart';

class AddGuestAndRoomScreen extends StatefulWidget {
  const AddGuestAndRoomScreen({super.key});

  static const String routeName = "/guest_and_room_adding"; 

  @override
  State<AddGuestAndRoomScreen> createState() => _AddGuestAndRoomScreenState();
}

class _AddGuestAndRoomScreenState extends State<AddGuestAndRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBarContainerWidget(
        titleString: "Add\nGuest and Room",
        implementLeading: true,
        child: Container(
          padding: EdgeInsets.only(top: 65),
          child: Column(
            children: [
              GuestAndRoomBookingItem(
                title: "Guest",
                icon: AssetHelper.iconGuest,
                initData: 1,
                color: Color(0xffFE9C5E)
              ),
              SizedBox(height: 20,),
              GuestAndRoomBookingItem(
                title: "Room",
                icon: AssetHelper.iconBed1,
                initData: 1,
                color: Color(0xffF77777)
              ),
              SizedBox(height: 25,),
              ButtonWidget(title: "Done", onTap: () {
                Navigator.of(context).pop();
              },)
            ],
          )
        )
      )
    );
  }
}