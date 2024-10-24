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
      appBar: AppBar(
        backgroundColor: ColorConstant.secondColor,
      ),
      backgroundColor: ColorConstant.secondColor,
      body:
      Column(
        children: [
          Text("Tell Us About Yourself",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: width*0.05
          ),),
          SizedBox(height: height*0.04,),
          Text("Who Do You Shop For ?",
          style: TextStyle(
            fontWeight: FontWeight.w500
          ),),
          SizedBox(height: height*0.04,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: height*0.05,
                width: width*0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.3),
                  color: ColorConstant.ten,

                ),
                child: Center(
                  child: Text("Men",
                    style: TextStyle(
                        color: ColorConstant.secondColor
                    ),),
                ),
              ),
              Container(
                height: height*0.05,
                width: width*0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.3),
                  color: ColorConstant.ten,

                ),
                child: Center(
                  child: Text("Women",
                    style: TextStyle(
                        color: ColorConstant.secondColor
                    ),),
                ),
              ),
            ],
          ),
          SizedBox(height: height*0.03,),
          Text("How Old Are You ?",
          style: TextStyle(
            fontWeight: FontWeight.w500
          ),),
          SizedBox(height: height*0.03,),
          Container(
            height: height*0.05,
            width: width*0.8,
            
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: ColorConstant.nineth

            ),

            child: Row(
              children: [
                Text("Age Range"),
                SizedBox(width: width*0.5,),
                Image(image: AssetImage(IconConstant.arrow))
              ],
            )
          ),
      SizedBox(height: height*0.5,),
      Container(
        height: height*0.06,
        width: width*0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstant.ten
        ),
        child: Center(child: Text("Finish",
        style: TextStyle(
          color: ColorConstant.secondColor
        ),)),
      ),
        ],
        
      ),
    );
  }
}
