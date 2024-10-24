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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.secondColor,
      ),
      backgroundColor: ColorConstant.secondColor,
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column(
          children: [
            Container(
              height: height*0.3,
              width: width*0.5,
              decoration: BoxDecoration(color: ColorConstant.secondColor,
                image: DecorationImage(image: AssetImage(ImageConstant.message),

                ),

              ),


            ),
            Text("We Send You an Email To Reset ",
            style: TextStyle(
              fontWeight: FontWeight.w700
            ),),
            Center(child: Text("Your Password.",
            style: TextStyle(
              fontWeight: FontWeight.w700
            ),)),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.05,
              width: width*0.3,
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
            )
          ],


        ),
      ),

    );
  }
}
