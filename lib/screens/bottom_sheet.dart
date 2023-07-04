import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customBottomSheet extends StatelessWidget {
  // const customBottomSheet({super.key});
  List sizes = [
    "S",
    "M",
    "L",
    "XL",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),)
      ),
      child: Column(
        children: [
          
        ],
      ),
    );
  }
}
