import 'package:flutter/material.dart';

import 'constant/colorconstant.dart';
import 'main.dart';
import 'notificationpage.dart';

class Notificationpage2 extends StatefulWidget {
  const Notificationpage2({super.key});

  @override
  State<Notificationpage2> createState() => _Notificationpage2State();
}
class _Notificationpage2State extends State<Notificationpage2> {
  List bell=[
  {
  "text":"Gilbert, you placed and order check your\n order history for full details "
  },
  {
  "text":"Gilbert, Thank you for shopping with us we\n have canceled order #24568."
  },
  {
  "text":"Gilbert, your Order #24568has been \nconfirmed check your order history for f...."
  }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:   Center(
        child: Text("Notifications",
          style: TextStyle(
          fontSize: width*0.06,
          fontWeight: FontWeight.w600
            ),),
              ),),
      body: Padding(
        padding:  EdgeInsets.all(width*0.05),
        child: Column(
          children: [
            ListView.separated(
              itemCount: bell.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
              return
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(width*0.04),
                        child: Icon(Icons.notifications),
                      ),
                  Text(bell[index]["text"],
                  ) ],
                  ),
                height: height*0.1,
                width: width*0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.02),
                    color: ColorConstant.nineth,
                )
                );
            }, separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: height*0.01,
                );
            },)
          ],
        ),
      ),
    );
  }
}
