import 'package:clot/constant/colorconstant.dart';
import 'package:clot/signpage.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(
        seconds: 4
    )).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signpage(),)));
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.thirdColor,
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Text("CLOT",
             style: TextStyle(
               fontSize: width*0.1,
               color: ColorConstant.sixthColor
             ),
            ),


          ],
        ),
      ),
    );

  }
}
