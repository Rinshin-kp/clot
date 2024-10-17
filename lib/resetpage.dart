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
      body: Column(
        children: [
          Container(
            height: height*0.5,
            width: width*0.5,
            child: Image.asset(ImageConstant.message),
          )
        ],
      ),
    );
  }
}
