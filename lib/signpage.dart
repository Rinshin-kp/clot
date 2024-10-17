import 'package:clot/constant/colorconstant.dart';
import 'package:flutter/material.dart';

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
        padding: EdgeInsets.all(width*0.05,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: width*0.3,),
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

                          });
                        },
                          child: eye ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off)

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
             )
          ],
        ),
      ),
    );
  }
}
