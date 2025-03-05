import 'package:clot/agepage.dart';
import 'package:clot/categories%20_page1.dart';
import 'package:clot/constant/colorconstant.dart';
import 'package:clot/main.dart';
import 'package:clot/signpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'model/usermodel.dart';

class Createpage extends StatefulWidget {
  const Createpage({super.key});

  @override
  State<Createpage> createState() => _CreatepageState();
}

class _CreatepageState extends State<Createpage> {
  TextEditingController nameController= TextEditingController();
  TextEditingController lastnameController= TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  bool lock= true;

  userSignup() {
    if (nameController.text == '') {
      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("enter name"),));
    }
    if (PasswordController.text == '') {
      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("enter password"),));
    }
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text, password: PasswordController.text);
    UserModel user = UserModel(name: nameController.text,
        email: emailController.text,
        lastname: lastnameController.text,
        password: PasswordController.text,
        id: '');
    print(user.toMap());
    FirebaseFirestore.instance.collection('users').add(user.toMap())
        .then((value) => value.update(user.copyWith(id: value.id).toMap()));
    }
  addUserFunction() {
    UserModel user = UserModel(
        name: nameController.text,
        email: emailController.text,
        password: PasswordController.text,
        id: "",
        lastname: lastnameController.text
    );
    print(user.toMap());
    FirebaseFirestore.instance
        .collection('users')
        .add(user.toMap())
        .then((value) => value.update(user.copyWith(id: value.id).toMap()));
//==========================
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => CategoriesPage1(name: '',)), (route) => false);
  }catchError(error){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter password"),));
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signpage(),));},
            child: Icon(Icons.arrow_back_ios_new_outlined,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.all(width*0.1),
              child: Text("Create Account",
                style: TextStyle(
                 fontWeight: FontWeight.w600,
                  fontSize: width*0.07
                ),
              ),
            ),
            SizedBox(height: width*0.02,),
            Center(
              child: Container(
                height: height*0.1,
                width: width*0.9,
                child: TextFormField(
                  controller:nameController,
                  decoration:  InputDecoration(
                    labelText: "Firstname",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstant.fifthColor
                      ),
                    ),
                ),
              ),
              ),
            ),
            Center(
              child: Container(
                height: height*0.1,
                width: width*0.9,
                child: TextFormField(
                  controller: lastnameController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Lastname",
                    border:OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstant.thirdColor
                      )
                    )
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: height*0.1,
                width: width*0.9,
                child: TextFormField(
                  controller: emailController,
                  keyboardType:  TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "EmailAddress",
                      border:OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConstant.thirdColor
                          )
                      )
                  ),
                ),
              ),
            ),
              Center(
              child: Container(
                height: height*0.1,
                width: width*0.9,
                child: TextFormField(
                  controller: PasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: lock?false:true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      border:OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConstant.thirdColor
                          )
                      ),
                    suffixIcon: InkWell(
                      onTap: () {
                        lock=!lock;
                        setState(() {
                        });
                       },
                        child: lock ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off)
                    )
                  ),
                ),
              ),
            ),
            Center(
                child: InkWell(
                  onTap: () {
                    userSignup();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Agepage(),));},
                  child: Container(
                    height: height*0.07,
                    width:width*0.9,
                    decoration: BoxDecoration(
                      borderRadius:  BorderRadius.circular(width*0.1),
                      color: ColorConstant.thirdColor,
                    ),
                    child: Center(
                        child: Text("Continue",
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.06,
                          color: ColorConstant.secondColor
                          ),
                        )),
                  ),
                ),
              ),

             ],
        ),
      ),

    );
  }
}


