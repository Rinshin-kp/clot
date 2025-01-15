import 'package:clot/constant/colorconstant.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Order3page extends StatefulWidget {
  const Order3page({super.key});

  @override
  State<Order3page> createState() => _Order3pageState();
}

class _Order3pageState extends State<Order3page> {
  List process=[
  {
    "text":" Order #456765",
    "text1":"4items"
},
    {
      "text":"Order #454569",
      "text1": "2items"
    },
    {
      "text":"Order #454809",
      "text1":"4items"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(width*0.2),
            child: Center(child: Text("Order",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: width*0.06
              ),
            )),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: height*0.05,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.1),
                    color: ColorConstant.nineth
                        ),
                  child: Center(child: Text("Processing")),
                      ),
                SizedBox(width: width*0.02,),
                Container(
                  height: height*0.05,
                  width: width*0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.1),
                      color: ColorConstant.nineth
                  ),
                  child: Center(child: Text("Shipped")),
                ),
                SizedBox(width: width*0.02,),
                Container(
                  height: height*0.05,
                  width: width*0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.1),
                      color: ColorConstant.nineth
                  ),
                  child: Center(child: Text("Delivered")),
                ),
                SizedBox(width: width*0.02,),
                Container(
                  height: height*0.05,
                  width: width*0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.1),
                      color: ColorConstant.nineth
                  ),
                  child: Center(child: Text("Returned")),
                ),
                SizedBox(width: width*0.02,),
                Container(
                  height: height*0.05,
                  width: width*0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.1),
                      color: ColorConstant.nineth
                  ),
                  child: Center(child: Text("Cancle")),
                ),
              ],
            ),
          ),
          ListView.separated(
            itemCount: process.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
           return Column(
             children: [
               Container(
                 height: height*0.1,
                 width: width*0.96,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(width*0.04),
                     color: ColorConstant.nineth
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding:  EdgeInsets.all(width*0.05),
                       child: Icon(Icons.message_outlined),
                     ),
                     Text(process[index]["text"],
                     style: TextStyle(
                       fontSize: width*0.05
                     ),),
                       Padding(
                       padding:  EdgeInsets.only( left:width*0.35),
                       child: Icon(Icons.arrow_forward_ios_rounded),
                     )
                   ],
                 ),),
             ],
           );
          }, separatorBuilder: (BuildContext context, int index) { return
          SizedBox(height: height*0.02,);},)
        ],
      ),
    );
  }
}
