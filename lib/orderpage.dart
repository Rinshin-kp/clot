import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

class Orderpage extends StatefulWidget {
  const Orderpage({super.key});

  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.secondColor,
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(width*0.23),
            child: Center(
                child: Text("Orders",
              style: TextStyle(
                fontSize: width*0.07,
                fontWeight: FontWeight.w600
              ),
            )),
          ),
          SizedBox(height: height*0.07
          ),
          Container(
            height: height*0.2,
            width: width*0.3,
            decoration: BoxDecoration(
              color: Colors.white70,
              image: DecorationImage(image: AssetImage(ImageConstant.check)            ),
          )
          ),
          SizedBox(height: height*0.02
              ),
          Text("No orders yet",
              style: TextStyle(
                fontSize: width*0.06
              ),
          ),
          SizedBox(height: height*0.03
          ),
          Container(
            height: height*0.08,
            width: width*0.53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.1),
               color: ColorConstant.ten,
            ),
            child: Center(child: Text("Explore categories",
              style: TextStyle(
                fontSize: width*0.05
              ),
            )),
          )
        ],

      ),
    );
  }
}
