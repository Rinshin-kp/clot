import 'package:clot/constant/imageconstant.dart';
import 'package:clot/notificationpage2.dart';
import 'package:flutter/material.dart';

import 'constant/colorconstant.dart';
import 'main.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({super.key});

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.secondColor,
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(width*0.27),
            child: Center(child: Text("Notifications",
              style: TextStyle(
                fontSize: width*0.06,
                fontWeight: FontWeight.w600
              ),
            )),
          ),
            SizedBox(
            height: height*0.07),
           Container(
            height: height*0.2,
            width: width*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageConstant.bell)),
            ),
          ),
          SizedBox(
          height: height*0.03,),
          Text("No Notification yet",
            style: TextStyle(
              fontSize: width*0.06
            ),
          ),
          SizedBox(
            height: height*0.03,),
            Container(
            height: height*0.08,
            width: width*0.53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.1),
              color: ColorConstant.ten,
            ),
              child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Notificationpage2 (),));},
                    child: Text("Explore categories",
                                  style: TextStyle(
                    fontSize: width*0.05
                                  ),
                                ),
                  )),
          )
        ]
      )
    );
  }
}
