import 'package:clot/categories%20_page1.dart';
import 'package:clot/firebase/authentication_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant/colorconstant.dart';
import '../constant/firebase_constant.dart';
import '../main.dart';

class Authentication2Login extends StatefulWidget {
  const Authentication2Login({super.key});

  @override
  State<Authentication2Login> createState() => _Authentication2LoginState();
}
class _Authentication2LoginState extends State<Authentication2Login> {
  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  setUsername() async {
    currentUserName = EmailController.text;
    SharedPreferences Prefs = await SharedPreferences.getInstance();
    Prefs.setString('username', EmailController.text);
    Navigator.push(context, CupertinoPageRoute(builder: (context) => AuthenticationPage(),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            controller:EmailController ,
            keyboardType:  TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "email:",
              labelStyle:TextStyle(
                fontSize: width*0.05,
              ),
              enabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width*0.02),
                  borderSide: BorderSide(
                      color: ColorConstant.thirdColor
                  )
              ),
              focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width*0.02),
                  borderSide:BorderSide(
                      color: ColorConstant.thirdColor
                  )
              ),
            ),
          ),
          SizedBox(height: height*0.04,),
          TextFormField(
            controller:passwordController ,
            keyboardType:  TextInputType.number,
            decoration: InputDecoration(
              labelText: "password:",
              labelStyle:TextStyle(
                fontSize: width*0.05,
              ),
              enabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width*0.02),
                  borderSide:BorderSide(
                      color: ColorConstant.thirdColor
                  )
              ),
              focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width*0.02),
                  borderSide:BorderSide(
                      color: ColorConstant.thirdColor
                  )
              ),
            ),
          ),

          SizedBox(height: height*0.04,),
          Padding(
            padding:  EdgeInsets.only(right:width*0.05),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>AuthenticationPage(),));
              },
              child: Text("Create one",
                style: TextStyle(
                  fontSize: width*0.06,
                  color: ColorConstant.fourColor
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              FirebaseAuth.instance.signInWithEmailAndPassword(email: EmailController.text, password: passwordController.text).then((value){
              FirebaseFirestore.instance.collection('add').doc(value.user!.uid).get().then((value) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesPage1(name: value.data()!['name'],),));
              },);

              } ,);

            },
            child: Text("login", style: TextStyle(
                fontSize: width*0.06,
                color: ColorConstant.fourColor
            ),),
          )
        ],
        
      )

    );
  }
}
