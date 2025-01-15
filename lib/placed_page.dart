import 'package:clot/constant/colorconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

import 'constant/imageconstant.dart';

class PlacedPage extends StatefulWidget {
  const PlacedPage({super.key});

  @override
  State<PlacedPage> createState() => _PlacedPageState();
}

class _PlacedPageState extends State<PlacedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.fourColor,
body: Column(
  children: [
    Container(
      height: height*0.5,
      width: width*0.9,
      decoration: BoxDecoration(
        image:  DecorationImage(image: AssetImage(ImageConstant.image),),
      ),
    ),
    Container(
      height: height*0.5,
      width: width*1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width*0.04),
        color: ColorConstant.secondColor
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Order Placed \n Successfully",
          style: TextStyle(
            fontSize: width*0.07,
            fontWeight: FontWeight.w600
          ),
        ),
        Text("You will recieve an email conformation"),
        Container(
          height: height*0.07,
          width: width*0.85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width*0.1),
            color: ColorConstant.fourColor
          ),
          child: Center(child: Text("See Order Detailes",
            style: TextStyle(
              fontSize: width*0.05,
              color: ColorConstant.secondColor
            ),
          ),
          ),

        )
      ],
      ),
    ),
  ],
),
    );
  }
}
