import 'package:clot/categories%20_page1.dart';
import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

import 'bottamnavigation.dart';

  bool a =false;
  bool b= false;

class Agepage extends StatefulWidget {
  const Agepage({super.key});
  @override
  State<Agepage> createState() => _AgepageState();
}
class _AgepageState extends State<Agepage> {
  var age=["20","21","22","23","24","25","26","27","28","29","30",];
  String? dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: ColorConstant.secondColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: height*0.067,),
          Padding(
            padding:  EdgeInsets.only(right:width*0.19),
            child: Text("Tell Us About Yourself",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: width*0.06
            ),),
          ),
          Padding(
            padding: EdgeInsets.only(right:width*0.36),
            child: Text("Who Do You Shop For ?",
            style: TextStyle(
              fontWeight: FontWeight.w500,
                fontSize: width*0.04
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: height*0.06,
                width: width*0.34,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.3),
                  color: a?ColorConstant.fourColor:ColorConstant.grey
                ),
                child: InkWell(
                  onTap: () {
                    a=true;
                    b= false;
                    setState(() {
                    });
                  },
                  child: Center(
                    child: Text("Men",
                      style: TextStyle(
                        fontSize: width*0.05,
                          color:ColorConstant.secondColor
                      ),),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  a=false;
                  b=true;
                  setState(() {
                  });
                },
                child: Container(
                  height: height*0.06,
                  width: width*0.34,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.3),
                    color: b?ColorConstant.fourColor:Colors.grey,
                  ),
                  child: Center(
                    child: Text("Women",
                      style: TextStyle(
                          fontSize: width*0.05,
                          color: ColorConstant.secondColor
                      ),),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(right:width*0.5),
            child: Text("How Old Are You ?",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: width*0.04
            ),),
          ),
          Padding(
            padding: EdgeInsets.only(right: width*0.3),
            child: Container(
              height: height*0.07,
              width:width*0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.2),
                color: ColorConstant.grey,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height:height*0.5,width: width*0.05,),
                     DropdownButton(
                      hint: Text("Age Range"),
                      icon: Icon(Icons.keyboard_arrow_down_rounded, size: width*0.09),
                      value: dropDownValue,
                      items: age.map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Padding(
                            padding:  EdgeInsets.all(width*0.03),
                            child: Text(item),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue = newValue; // Update the selected value
                        });
                      },
                    ),
                   ],
               ),
            ),
          ),
         SizedBox(height: height*0.1,),
           InkWell(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>BottamNavigation (),));},
        child: Container(
          height: height*0.07,
          width: width*0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.2),
              color: ColorConstant.fourColor
          ),
          child: Center(
              child: Text("Finish",
              style: TextStyle(
                fontSize: width*0.05,
                color: ColorConstant.secondColor
              ),)),
        ),
      ),
        ],

      ),
    );
  }
}
