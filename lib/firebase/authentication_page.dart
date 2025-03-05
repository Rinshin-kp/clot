
import 'package:clot/firebase/addmodel.dart';
import 'package:clot/firebase/authentication2_login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constant/colorconstant.dart';
import '../main.dart';
import '../model/usermodel.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}
class _AuthenticationPageState extends State<AuthenticationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  userSignup()  {
    if (nameController.text == '') {
      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("enter name"),));
    }
    if (passwordController.text == '') {
      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("enter password"),));
    }
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: EmailController.text, password: passwordController.text).then((value) {
      Addmodel user = Addmodel(
        name: nameController.text,
        Email: EmailController.text,
        password:passwordController.text,
        confirmpassword:confirmController.text,
        id: value.user!.uid,  ) ;
      print(user.toMap());
      FirebaseFirestore.instance.collection('add').doc(value.user!.uid).set(user.toMap());
    },);
Navigator.push(context, MaterialPageRoute(builder: (context) => Authentication2Login(),));
  }
  addFunction() {
    Addmodel user = Addmodel(
        name: nameController.text,
        Email: EmailController.text,
        password: passwordController.text,
        confirmpassword: confirmController.text,
        id: "",
    );
    print(user.toMap());
    FirebaseFirestore.instance.collection('add').add(user.toMap()).then((value) => value.update(user.copyWith(id: value.id).toMap()));
//==========================
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => Authentication2Login()), (route) => false);
  }catchError(error){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter password"),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Column(
            children: [
            TextFormField(
            controller:nameController ,
        keyboardType:  TextInputType.name,
        decoration: InputDecoration(
          labelText: "name:",
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
        TextFormField(
          controller:passwordController ,
          keyboardType:  TextInputType.number,
          decoration: InputDecoration(
            labelText: "confirmpassword:",
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
        InkWell(
          onTap: () {
            userSignup();
            },
          child: Text("Create",
              style: TextStyle(
                  fontSize: width*0.06,
                  color: ColorConstant.fourColor,
          )
          ),
        ) ,
        SizedBox(height: height*0.03,),
        Text("Login",
            style: TextStyle(
              fontSize: width*0.06,
              color: ColorConstant.fourColor,
            )
        )
            ]
        ),
      ) 
    );
    

  }
}

