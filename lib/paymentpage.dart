import 'package:clot/constant/imageconstant.dart';
import 'package:flutter/material.dart';

import 'constant/colorconstant.dart';
import 'main.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Column(
              children: [
                Text('Cards',
                style: TextStyle(
                  fontWeight: FontWeight.w700
                ),),
                Container(
                  height: height*0.1,
                  width: width*0.9,
                  decoration: BoxDecoration(
                      color: ColorConstant.nineth,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text('****4187'),
                        SizedBox(
                          width: width*0.55,
                        ),
                        Icon(Icons.arrow_forward_ios)

                      ],
                    ),

                  ),

                ),
                SizedBox(
                  height: height*0.02,
                ),
                Container(
                  height: height*0.1,
                  width: width*0.9,
                  decoration: BoxDecoration(
                      color: ColorConstant.nineth,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text('****9387'),
                        SizedBox(
                          width: width*0.55,
                        ),
                        Icon(Icons.arrow_forward_ios)

                      ],
                    ),

                  ),

                ),
                Text('Paypal',
                style: TextStyle(
                  fontWeight: FontWeight.w700
                ),),
                Container(
                  height: height*0.1,
                  width: width*0.9,
                  decoration: BoxDecoration(
                      color: ColorConstant.nineth,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text('Cloth@gmail.com'),
                        SizedBox(
                          width: width*0.4,
                        ),
                        Icon(Icons.arrow_forward_ios)

                      ],
                    ),

                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
