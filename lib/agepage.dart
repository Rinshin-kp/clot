import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

class Agepage extends StatefulWidget {
  const Agepage({super.key});

  @override
  State<Agepage> createState() => _AgepageState();
}

class _AgepageState extends State<Agepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: ColorConstant.secondColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: height*0.067,),
          Padding(
            padding:  EdgeInsets.only(right:width*0.19),
            child: Text("Tell Us About Yourself",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: width*0.06
            ),),
          ),
          Padding(
            padding: EdgeInsets.only(right:width*0.36),
            child: Text("Who Do You Shop For ?",
            style: TextStyle(
              fontWeight: FontWeight.w500,
                fontSize: width*0.04
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: height*0.06,
                width: width*0.34,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.3),
                  color: ColorConstant.fourColor
                ),
                child: Center(
                  child: Text("Men",
                    style: TextStyle(
                      fontSize: width*0.05,
                        color: ColorConstant.secondColor
                    ),),
                ),
              ),
              Container(
                height: height*0.06,
                width: width*0.34,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.3),
                  color: ColorConstant.fourColor,
                ),
                child: Center(
                  child: Text("Women",
                    style: TextStyle(
                        fontSize: width*0.05,
                        color: ColorConstant.secondColor
                    ),),
                ),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(right:width*0.5),
            child: Text("How Old Are You ?",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: width*0.04
            ),),
          ),
          Container(
            height: height*0.08,
            width: width*0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.2),
                color: ColorConstant.nineth
            ),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(width*0.05),
                  child: Text("Age Range",
                    style: TextStyle(
                      fontSize: width*0.05
                    ),
                  ),
                ),
                 SizedBox(width: width*0.4,),
                Icon(Icons.keyboard_arrow_down,
                  size: width*0.1,
                )
              ],
            )
          ),
      SizedBox(height: height*0.2,),
      Container(
        height: height*0.07,
        width: width*0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width*0.2),
            color: ColorConstant.fourColor
        ),
        child: Center(child: Text("Finish",
        style: TextStyle(
          fontSize: width*0.05,
          color: ColorConstant.secondColor
        ),)),
      ),
        ],

      ),
    );
  }
}
