import 'package:clot/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constant/colorconstant.dart';
import 'main.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Center(child: Text('Payment',
            style: TextStyle(
              fontWeight: FontWeight.w600
            ),
          )),
        ),
      body: Padding(
        padding: EdgeInsets.all(width*0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Cards",
            style:TextStyle(
              fontSize: width*0.06,
              fontWeight: FontWeight.w600
            )
              ),
            SizedBox(height: height*0.04),
            Container(
              height: height*0.1,
              width: width*0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.03),
                color: ColorConstant.nineth
              ),
              child: Row(
                children: [
                  Text(" ***** 4187",
                  style: TextStyle(
                    fontSize: width*0.05
                  ),),
                  SvgPicture.asset(IconConstant.circle) ,
                  SizedBox(width: height*0.22,),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SizedBox(height: height*0.03,),
            Container(
              height: height*0.1,
              width: width*0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.03),
                color: ColorConstant.nineth
              ),
              child: Row(
                children: [
                  Text(" ***** 4187",
                  style: TextStyle(
                    fontSize: width*0.05
                  ),),
                  SvgPicture.asset(IconConstant.circle) ,
                  SizedBox(width: height*0.22,),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SizedBox(height: height*0.04,),
            Text("PayPal",
            style: TextStyle(
              fontSize: width*0.06,
              fontWeight: FontWeight.w600,
            ),
            ),
               SizedBox(height: height*0.04,),
                TextFormField(
                controller:emailController ,
                keyboardType:  TextInputType.emailAddress,
               decoration: InputDecoration(
               labelText: "Cloth@gmail.com",
             suffixIcon: Icon(Icons.arrow_forward_ios_sharp),
             labelStyle:TextStyle(
              fontSize: width*0.05,
                ),
             enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(width*0.02),
            borderSide:BorderSide(
           color: ColorConstant.grey
          )
        ),
       focusedBorder:OutlineInputBorder(
       borderRadius: BorderRadius.circular(width*0.02),
        borderSide:BorderSide(
       color: ColorConstant.grey
           )
          ),
          ),
        ),
          ],
      ),
    ));
  }
}