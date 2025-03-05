import 'package:flutter/material.dart';

import 'constant/colorconstant.dart';
import 'main.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  TextEditingController Addresscontroller = TextEditingController();
  TextEditingController citycontroller = TextEditingController();
  TextEditingController statecontroller = TextEditingController();
  TextEditingController codecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: () {
          Navigator.pop(context);
        },
            child: Icon(Icons.arrow_back_ios_outlined)),
        title: Center(child: Text("Add Address",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(width*0.08),
          child: Column(
            children: [
              TextFormField(
                controller:Addresscontroller ,
                decoration: InputDecoration(
                  labelText: "Street Address",
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
               TextFormField(
                controller:citycontroller ,
                decoration: InputDecoration(
                  labelText: "City",
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
                      controller:statecontroller ,
                      decoration: InputDecoration(
                        labelText: "State",
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
                      controller:codecontroller ,
                      decoration: InputDecoration(
                        labelText: "Zip Code",
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
              )
        
            ],
          ),
        ),
      ),
    );
  }
}
