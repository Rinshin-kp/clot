import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

class Resetpage extends StatefulWidget {
  const Resetpage({super.key});

  @override
  State<Resetpage> createState() => _ResetpageState();
}

class _ResetpageState extends State<Resetpage> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.secondColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height*0.2,
            width: width*4,
            decoration: BoxDecoration(color: ColorConstant.secondColor,
              image: DecorationImage(
                image: AssetImage(ImageConstant.message),
              ),
            ),
          ),
          SizedBox(height: height*0.04,),
          Text("We Send You an Email To Reset ",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: width*0.05
          ),),
          Center(child: Text("Your Password.",
          style: TextStyle(
            fontWeight: FontWeight.w700,fontSize: width*0.05
          ),)),
          SizedBox(height: height*0.02,),
          Container(
            height: height*0.06,
            width: width*0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.3),
              color: ColorConstant.ten,
            ),
            child: Center(
              child: Text("Return To login",
              style: TextStyle(
                color: ColorConstant.secondColor
              ),),
            ),
          ),
         ]


      ),

    );
  }
}
