import 'package:clot/constant/colorconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

class Addresspage extends StatefulWidget {
  const Addresspage({super.key});

  @override
  State<Addresspage> createState() => _AddresspageState();
}

class _AddresspageState extends State<Addresspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        title: Center(child: Text('Address',
        style: TextStyle(
          fontWeight:FontWeight.w500
        ),)),
      ),
      body: Padding(
        padding:  EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              height: height*0.1,
              width: width*0.9,
              decoration: BoxDecoration(
                color: ColorConstant.nineth,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2715 Ash Dr shan jose,South'),
                  ),
                  SizedBox(),

                  Text('Edit',
                  style: TextStyle(
                    color: ColorConstant.fourColor
                  ),)
                ],
              ),

            ),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.1,
              width: width*0.9,
              decoration: BoxDecoration(
                  color: ColorConstant.nineth,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2715 Ash Dr shan jose,South'),
                  ),
                  SizedBox(),

                  Text('Edit',
                    style: TextStyle(
                        color: ColorConstant.fourColor
                    ),)
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
