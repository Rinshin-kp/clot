import 'package:clot/constant/colorconstant.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(width*0.1),
            child: Center(child: Text("Check Out",
                style: TextStyle(
                  fontSize: width*0.06,
                  fontWeight: FontWeight.w700
                )
              )),
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
                  child: Text("Shipping Address"),
                ),
                SizedBox(
                  height: height*0.02,
                ),
                Row(
                  children: [
                    Text(" Add Shipping Address",
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
            height: height*0.04,
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
                  padding:  EdgeInsets.only(right: width*0.6),
                  child: Text("Payment method"),
                ),
                SizedBox(
                  height: height*0.02,
                ),
                Row(
                  children: [
                    Text(" Add Payment Method",
                      style:TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(
                      width: height*0.15,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: height*0.1,
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
            height: height*0.15,
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
