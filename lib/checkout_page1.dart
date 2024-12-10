import 'package:clot/constant/imageconstant.dart';
import 'package:flutter/material.dart';

import 'constant/colorconstant.dart';
import 'main.dart';

class CheckoutPage1 extends StatefulWidget {
  const CheckoutPage1({super.key});

  @override
  State<CheckoutPage1> createState() => _CheckoutPage1State();
}

class _CheckoutPage1State extends State<CheckoutPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Column(
        children: [
          Center(
            child: Text("CheckOut",
            style: TextStyle(
              fontSize: width*0.06,
              fontWeight: FontWeight.w600
            ),),
          ),
          SizedBox(
            height: height*0.07,
          ),
          Container(
            height: height*0.15,
            width:width*0.94,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.02),
                color: ColorConstant.nineth
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height*0.01,
                ),
                Padding(
                  padding:  EdgeInsets.only(right:width*0.6),
                  child: Text("Shipping Address"),
                ),
                SizedBox(
                  height: height*0.02,
                ),
                Row(
                  children: [
                    Text(" 2715 Ash Dr. San jose, \n South Dakoth....",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.05
                      ),
                    ),
                    SizedBox(
                        width: height*0.15),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),

              ],
            ),
          ),
          SizedBox(
            height: height*0.02,
          ),
          Container(
            height: height*0.1,
            width:width*0.94,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.02),
                color: ColorConstant.nineth
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height*0.01,
                ),
                Padding(
                  padding:  EdgeInsets.only(right:width*0.6),
                  child: Text("Payment Method"),
                ),
                SizedBox(
                  height: height*0.02,
                ),
                Row(
                  children: [
                    Text(" **** 4187",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.05
                      ),
                    ),
                    Image(image: AssetImage(ImageConstant.frame),width: width*0.07,),
                    SizedBox(width: width*0.55,),
                    Icon(Icons.arrow_forward_ios_outlined),

                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height*0.08,
          ),
          Row(
            children: [
              Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:  EdgeInsets.all(width*0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("sub total",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width*0.04
                            ),
                          ),
                          Text("Shipping cost",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width*0.04
                            ),),
                          Text("Tax",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width*0.04
                            ),),
                          Text("Total",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width*0.04
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding:  EdgeInsets.all(width*0.04),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text("\$200"),
                          Text("\$8.00"),
                          Text("\$0.00"),
                          Text(" \$200",
                            style: TextStyle(
                                fontWeight: FontWeight.w700
                            ),)
                        ],
                      ),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: height*0.13,
          ),
          Container(
            height: height*0.08,
            width: width*0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.1),
                color: ColorConstant.fourColor
            ),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(width*0.06),
                  child: Text("\$208",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: ColorConstant.secondColor
                    ),),
                ),
                SizedBox(
                  width: width*0.43,
                ),
                Text("Place Order",
                  style: TextStyle(
                      fontSize: width*0.04,
                      color: ColorConstant.secondColor
                  ),

                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
