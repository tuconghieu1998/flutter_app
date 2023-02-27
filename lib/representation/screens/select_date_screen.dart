import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app/representation/widgets/button_widget.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter/material.dart';

class SelectDateScreen extends StatelessWidget {
  SelectDateScreen({super.key});

  static const String routeName = "/select_date";
  DateTime? rangeStartDate; 
  DateTime? rangeEndDate; 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBarContainerWidget(
        titleString: "Select Date",
        implementLeading: true,
        child: Container(
          padding: EdgeInsets.only(top: 65),
          child: Column(
            children: [
              SfDateRangePicker(
                    onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                      if(args.value is PickerDateRange) {
                        rangeStartDate = args.value.startDate;
                        rangeEndDate = args.value.endDate;
                      }
                    },
                    selectionMode: DateRangePickerSelectionMode.range,
                    // initialSelectedRange: PickerDateRange(
                    //     DateTime.now().subtract(const Duration(days: 4)),
                    //     DateTime.now().add(const Duration(days: 3))),
                  ),
              ButtonWidget(
                title: "Select",
                onTap: () {
                  Navigator.of(context).pop([rangeStartDate, rangeEndDate]);
                },),
                SizedBox(height: 20,),
                ButtonWidget(
                title: "Cancel",
                onTap: () {
                  Navigator.of(context).pop();
                },)
            ],
          )

        ),
      ),
    );
  }
}