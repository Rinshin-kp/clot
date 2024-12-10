import 'package:clot/constant/colorconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

import 'constant/imageconstant.dart';

class Emptypage extends StatefulWidget {
  const Emptypage({super.key});

  @override
  State<Emptypage> createState() => _EmptypageState();
}

class _EmptypageState extends State<Emptypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.secondColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.secondColor,
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height*0.2,
            width:width*4,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageConstant.parcel)),
            ),
          ),
          SizedBox(height: height*0.06,),
          Text("Your cart is empty",
            style: TextStyle(
              fontSize: width*0.09
            ),
          ),
          SizedBox(height: height*0.04),
          Container(
            height: height*0.08,
            width: width*0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.1),
              color:ColorConstant.fourColor
            ),
            child: Center(
              child: Text("Explore Categories",
                style: TextStyle(
                  fontSize: width*0.06,
                  color: ColorConstant.secondColor
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
