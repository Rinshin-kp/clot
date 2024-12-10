import 'package:clot/constant/colorconstant.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Orderpage2 extends StatefulWidget {
  const Orderpage2({super.key});

  @override
  State<Orderpage2> createState() => _Orderpage2State();
}

class _Orderpage2State extends State<Orderpage2> {
  List order=[
    {
    "text":"Deliverd",
      "text1":"28may",
  },
    {
    "text":"shipped",
    "text1":"28may",
    }, {
    "text":"Order Confirmed",
    "text1":"28may",
    }, {
    "text":"0rder Placed",
    "text1":"28may",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     backgroundColor: ColorConstant.nineth,
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: Column(
        children: [
          Center(child: Padding(
            padding:  EdgeInsets.all(width*0.07),
            child: Text("Order #456765",
            style: TextStyle(
              fontSize: width*0.06,
              fontWeight: FontWeight.w600
            )
              ),
          )
          ),
    ListView.separated(
      shrinkWrap: true,
      itemCount: order.length,
      itemBuilder:  (context, index) {
      return ListTile(
       leading: CircleAvatar(
         child: Icon(Icons.check,
           color: ColorConstant.secondColor,
         ),
         radius: 16,
         backgroundColor: ColorConstant.fourColor,
       ),
          trailing: Text(order[index]["text1"]),
        title: Text(order[index]["text"],
          style: TextStyle(
            fontSize: width*0.05
          ),
      ) );
      },
      separatorBuilder: (BuildContext context, int index){return
        SizedBox(height: height*0.03,
        );
        },
        ),
          SizedBox(height: height*0.02,),
          Padding(
            padding:  EdgeInsets.only(right: width*0.65),
            child: Text("Order Items",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: width*0.05
              ),
            ),
          ),
          SizedBox(
            height: height*0.04,),
          Container(
            height: height*0.1,
            width: width*0.94,
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width*0.02),
    color: ColorConstant.nineth
     ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(width*0.06),
            child: Icon(Icons.filter_frames_outlined),
          ),
          Text("4 Items"),
          SizedBox(width: width*0.4,),
          Text("View All"),
        ],
      ),
      ),
          SizedBox(height: width*0.1,),
          Padding(
            padding:  EdgeInsets.only(right: width*0.6),
            child: Text("Shipping Detailes",
              style: TextStyle(
                fontSize: width*0.04
              ),
            ),
          ),
          Container(
            height: height*0.1,
            width: width*0.94,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.02),
              color: ColorConstant.nineth
            ),
            child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text("2715Ash Dr.san jose, south Dakota 83475  121-224-7890"

              ),
            ),
          )
   ] )
    );
  }
}
