import 'package:flutter/material.dart';

import 'constant/colorconstant.dart';
import 'main.dart';

class Addcard extends StatefulWidget {
  const Addcard({super.key});

  @override
  State<Addcard> createState() => _AddcardState();
}

class _AddcardState extends State<Addcard> {
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController ccvcontroller = TextEditingController();
  TextEditingController expcontroller = TextEditingController();
  TextEditingController nameontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        title: Center(child: Text("Add Card",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        )),
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.08),
         child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller:numbercontroller ,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Card Number",
                  labelStyle:TextStyle(
                    fontSize: width*0.05,
                  ),
                   enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.03),
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
              SizedBox(height: height*0.03,),
              Row(
                children: [
                  Container(
                    height: height*0.07,
                    width: width*0.38,
                    child: TextFormField(
                      controller:expcontroller,
                      decoration: InputDecoration(
                        labelText: "Ccv",
                        labelStyle:TextStyle(
                          fontSize: width*0.05,
                        ),
                        enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width*0.03),
                            borderSide:BorderSide(
                              color: ColorConstant.thirdColor,
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
                  SizedBox(width: width*0.07,),
                  Container(
                    height: height*0.07,
                    width: width*0.38,
                    child: TextFormField(
                      controller:nameontroller ,
                      decoration: InputDecoration(
                        labelText: "Exp",
                        labelStyle:TextStyle(
                          fontSize: width*0.05,
                        ),
                        enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width*0.03),
                            borderSide:BorderSide(
                              color: ColorConstant.thirdColor,
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
                ],
              ),
              SizedBox(height: height*0.03),
              TextFormField(
                controller:numbercontroller ,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "CardholderName",
                  labelStyle:TextStyle(
                    fontSize: width*0.05,
                  ),
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.03),
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
              SizedBox(height: height*0.4),
              Container(
                height: height*0.08,
                width: width*0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.1),
                    color: ColorConstant.fourColor
                    ),
                   child: Center(child: Text("Save",
                    style: TextStyle(
                      fontSize: width*0.05,
                      color: ColorConstant.secondColor
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
