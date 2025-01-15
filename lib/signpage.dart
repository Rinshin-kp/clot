import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:clot/createpage.dart';
import 'package:clot/forgotpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class Signpage extends StatefulWidget {
  const Signpage({super.key});

  @override
  State<Signpage> createState() => _SignpageState();
}

class _SignpageState extends State<Signpage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  bool eye=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(width*0.04,),
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: width*0.2,),
              Text("Sign in",
                style: TextStyle(
                  fontSize: width*0.09,
                  fontWeight: FontWeight.w600
                 ),
              ),
               SizedBox(
                 height: height*0.04,
               ),
               Center(
                 child: SizedBox(
                   height: height*0.1,
                   width: width*1,
                   child: TextFormField(
                     controller:emailController ,
                     keyboardType:  TextInputType.emailAddress,
                     decoration: InputDecoration(
                       labelText: "EmailAddress",
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
                 ),
               ),
               Container(
                 height: height*0.1,
                 width: width*1,
                 child: TextFormField(
                   controller: PasswordController,
                   keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                   autovalidateMode: AutovalidateMode.onUserInteraction,
                   obscureText: eye?false:true,
                   decoration: InputDecoration(
                     labelText: "Password",
                     labelStyle: TextStyle(
                       fontSize:  width*0.05,
                     ),
                      suffixIcon: Padding(
                        padding:  EdgeInsets.all(width*0.03),
                        child: InkWell(
                          onTap:   () {
                            eye=!eye;
                            setState(() {
                            });},
                            child: eye ? Icon(Icons.visibility) : Icon(Icons.visibility_off)
                        ),
                      ),
                      enabledBorder:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(width*0.02),
                       borderSide:BorderSide(
                           color: ColorConstant.thirdColor
                       )
                   ),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(width*0.02),
                         borderSide:BorderSide(
                             color: ColorConstant.thirdColor
                         )
                     ),
                   ),
                 ),
               ),
               Row(
                 children: [
                   Text("Dont have An account ?"),
                   InkWell(
                  onTap: () {
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Createpage (),));},
                  child: Text(" Create One",
                       style: TextStyle(
                           fontWeight: FontWeight.w600,
                           fontSize: width*0.04
                       ),),
                   )],
               ),
               SizedBox(height: height*0.04,
               ),
               Container(
                 height: height*0.08,
                  width: width*1,
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(width*0.1),
                     color: ColorConstant.nineth,
                 ),
                 child: Row(
                   children: [
                Padding(
                  padding: EdgeInsets.all(width*0.04),
                  child: SvgPicture.asset(IconConstant.apple),
                ),
                     SizedBox(width: width*0.078,),
                     Text("Continue With Apple",
                       style: TextStyle(
                       fontSize: width*0.05,
                         fontWeight: FontWeight.w600
                       ),
                     )
                   ],
                 ),
               ) ,
               SizedBox(height: height*0.02,),
                 Container(
                 height: height*0.08,
                  width: width*1,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.1),
                  color: ColorConstant.nineth,
                       ),
                   child: Row(
                     children: [
                       Padding(
                         padding: EdgeInsets.all(width*0.05),
                         child: SvgPicture.asset(IconConstant.google),
                       ),
                       SizedBox(width: width*0.05,),
                       Text("Continue With google",
                         style: TextStyle(
                             fontSize: width*0.05,
                             fontWeight: FontWeight.w600
                         ),
                       )
                     ],
                   ),
                    ),
                   SizedBox(height: height*0.02,),
                 Container(
                  height: height*0.08,
                   width: width*1,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(width*0.1),
                     color: ColorConstant.nineth,
                 ),
                   child: Row(
                     children: [
                       Padding(
                         padding: EdgeInsets.all(width*0.04),
                         child: SvgPicture.asset(IconConstant.facebook),
                       ),
                       SizedBox(width: width*0.07,),
                       Text("Continue With Facebook",
                         style: TextStyle(
                             fontSize: width*0.05,
                             fontWeight: FontWeight.w600
                         ),
                       )
                     ],
                   ),
                 ),
               SizedBox(height: height*0.05,),
               Padding(
                 padding:  EdgeInsets.all(width*0.07),
                 child: Container(
                    height: height*0.07,
                     width: width*0.9,
                     decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(width*0.1),
                       color: ColorConstant.fourColor,
                   ),
                   child: Center(
                     child: Text("Continue",
                     style:TextStyle(
                       fontSize: width*0.05,
                       fontWeight: FontWeight.w600,
                       color: ColorConstant.secondColor
                     ),
                   ),
                   ),
                 ),
               ),
               Row(
                 children: [
                   Text(" Forgot Password ?",
                   ),
                   InkWell(
                     onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Forgotpage(),));},

                     child: Text("  Reset",
                     style: TextStyle(
                       fontWeight: FontWeight.w600,
                       fontSize: width*0.04
                     ),),
                   )
                 ],
               ),
             ],

          ),
        ),
      ),
    );
  }
}
