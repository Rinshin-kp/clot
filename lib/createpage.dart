import 'package:clot/constant/colorconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

class Createpage extends StatefulWidget {
  const Createpage({super.key});

  @override
  State<Createpage> createState() => _CreatepageState();
}

class _CreatepageState extends State<Createpage> {
  TextEditingController nameController= TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  bool lock= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.nineth,
        leading: Icon(Icons.arrow_back_ios_new_outlined,),
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
                  controller: nameController,
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
              child: Container(
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
            ),
            Center(
              child: Container(
                height: height*0.07,
                width:width*0.9,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.circular(width*0.1),
                  color: ColorConstant.thirdColor,
                ),
                child: Center(child: Text("Continue",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.06,
                    color: ColorConstant.secondColor
                  ),
                )),
                 
              ),
            ),
            SizedBox(
              height: width*0.05,
            ),
            Row(
              children: [
                Text("  Frogot Password? ",
                    style: TextStyle(
                        fontSize: width*0.044
                    )
                ),
                Text("Reset",
                  style: TextStyle(
                      fontWeight: FontWeight.w700
                  ),
                )
              ],
            ),

          ],
        ),
      ),

    );
  }
}
