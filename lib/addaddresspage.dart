import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant/colorconstant.dart';
import 'main.dart';

class Addaddresspage extends StatefulWidget {
  const Addaddresspage({super.key});

  @override
  State<Addaddresspage> createState() => _AddaddresspageState();
}

class _AddaddresspageState extends State<Addaddresspage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        title: Text('Add Address',style: TextStyle(
            fontWeight: FontWeight.w500
        ),),
      ),
      body: Padding(
        padding:  EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: height*0.1,
              width: width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorConstant.nineth
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Text('Street Address'),
              ),
            ),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.1,
              width: width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorConstant.nineth
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Text('City'),
              ),
            ),
            SizedBox(height: height*0.03,),
            Row(
              children: [
                Container(
                  height: height*0.08,
                  width: width*0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorConstant.nineth
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('State'),
                  ),
                ),
                SizedBox(
                  width: width*0.14,
                ),
                Container(
                  height: height*0.08,
                  width: width*0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorConstant.nineth
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(20),
                    child: Text('Zip code'),
                  ),
                )
              ],
            )
          ],
        ),

      ),
    );();
  }
}
