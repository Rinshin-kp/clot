import 'package:clot/createpage.dart';
import 'package:clot/resetpage.dart';
import 'package:flutter/material.dart';

import 'constant/colorconstant.dart';
import 'main.dart';

class Forgotpage extends StatefulWidget {
  const Forgotpage({super.key});

  @override
  State<Forgotpage> createState() => _ForgotpageState();
}

class _ForgotpageState extends State<Forgotpage> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Createpage (),));},
            child: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: width*0.4),
            child: Text("ForgotPassword",
              style: TextStyle(
                fontSize: width*0.06,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(height:height*0.05,),
          Container(
            height: height*0.1,
            width: width*0.9,
            child: TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Enter Email Address",
                  border:OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorConstant.thirdColor
                      )
                  )
              ),
            ),
          ),
      Center(
        child: Container(
          height: height*0.07,
          width:width*0.9,
          decoration: BoxDecoration(
            borderRadius:  BorderRadius.circular(width*0.1),
            color: ColorConstant.thirdColor,
          ),
          child: Center(
              child: InkWell(
                onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Resetpage (),));},
                child: Text("Continue",
                  style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width*0.06,
                  color: ColorConstant.secondColor
                            ),
                          ),
              )),

        ),

      )
        ],
      ),
      );

  }
}
