import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app/representation/widgets/hotel_search_result_item.dart';

class HotelSearchResultScreen extends StatefulWidget {
  const HotelSearchResultScreen({super.key});

  static const String routeName = "/hotel_search_result";

  @override
  State<HotelSearchResultScreen> createState() => _HotelSearchResultScreenState();
}

class _HotelSearchResultScreenState extends State<HotelSearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBarContainerWidget(
        titleString: "Hotels",
        implementLeading: true,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HotelSearchResultItem(),
                SizedBox(height: 20,),
                HotelSearchResultItem(),
                SizedBox(height: 20,),
                HotelSearchResultItem()
              ],
            )
          ),
        ),
        )
    );
  }
}