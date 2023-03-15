import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/data/models/hotel_model.dart';
import 'package:flutter_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app/representation/widgets/hotel_item_widget.dart';

import '../../core/helpers/asset_helper.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({super.key});

  static const String routeName = "/hotels_screen";
  
  @override
  State<HotelsScreen> createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {

  final List<HotelModel> listHotel = [
    HotelModel(
      hotelImage: AssetHelper.hotel1,
      hotelName: 'Royal Palm Heritage',
      location: 'Purwokerto, Jateng',
      awayKilometers: '364 m',
      star: 4.5,
      numberOfReview: 3241,
      price: 143,
    ),
    HotelModel(
      hotelImage: AssetHelper.hotel2,
      hotelName: 'Grand Luxury\'s',
      location: 'Banyumas, Jateng',
      awayKilometers: '2.3 km',
      star: 4.2,
      numberOfReview: 3241,
      price: 234,
    ),
    HotelModel(
      hotelImage: AssetHelper.hotel3,
      hotelName: 'The Orlando House',
      location: 'Ajibarang, Jateng',
      awayKilometers: '1.1 km',
      star: 3.8,
      numberOfReview: 1234,
      price: 132,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: "Hotels",
      child: SingleChildScrollView(
        child: Column(children: 
          listHotel.map((e) => HotelItemWidget(hotelModel: e),).toList()
      ,),),
    );
  }
}