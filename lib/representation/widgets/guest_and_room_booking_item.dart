import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/core/helpers/asset_helper.dart';
import 'package:flutter_app/core/helpers/image_helper.dart';
import 'package:flutter_app/representation/widgets/icon_widget.dart';

class GuestAndRoomBookingItem extends StatefulWidget {
  const GuestAndRoomBookingItem({super.key, this.title, this.icon, this.initData, this.color});
  
  final String? title;
  final String? icon;
  final int? initData; 
  final Color? color;

  @override
  State<GuestAndRoomBookingItem> createState() => _GuestAndRoomBookingItemState();
}

class _GuestAndRoomBookingItemState extends State<GuestAndRoomBookingItem> {
  late final TextEditingController _textEditingController;
  final FocusNode _focusNode = FocusNode();
  late int number;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    number = widget.initData ?? 1;
    _textEditingController = TextEditingController(
      text: widget.initData.toString()
      )..addListener(() {
        if(_textEditingController.text != "") {
          number = int.parse(_textEditingController.text);
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: Row(
        children: [
          IconWidget(icon: widget.icon ?? AssetHelper.iconGuest, color: widget.color ?? Color(0xffFE9C5E)),
          SizedBox(width: 20,),
          Text(widget.title ?? "", style: TextStyle(fontSize: 16),),
          Spacer(),
          GestureDetector(
            onTap: () {
              if(number > 1) {
                setState(() {
                  number--;
                  _textEditingController.text = number.toString();
                  if(_focusNode.hasFocus) {
                    _focusNode.unfocus();
                  }
                });
              }
            },
            child: ImageHelper.loadFromAsset(AssetHelper.iconDecrease),
          ),
          Container(
            width: 60,
            child: TextField(
              controller: _textEditingController,
              focusNode: _focusNode,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                  number++;
                  _textEditingController.text = number.toString();
                  if(_focusNode.hasFocus) {
                    _focusNode.unfocus();
                  }
                });
            },
            child: ImageHelper.loadFromAsset(AssetHelper.iconIncrease),
          )
          

        ],
      ),
    );
  }
}