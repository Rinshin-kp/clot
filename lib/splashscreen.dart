import 'package:clot/constant/colorconstant.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.thirdColor,
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Text("CLOT",
             style: TextStyle(
               fontSize: width*0.2,
               color: ColorConstant.sixthColor
             ),
            ),
            CircularProgressIndicator()

          ],
        ),
      ),
    );

  }
}
