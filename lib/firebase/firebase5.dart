import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constant/colorconstant.dart';
import '../main.dart';

class Firebase5 extends StatefulWidget {
  final String name;
  final String age;
  final String place;
  final String id;
  const Firebase5({super.key, required this.name, required this.age, required this.place, required this.id});

  @override
  State<Firebase5> createState() => _Firebase5State();
}
class _Firebase5State extends State<Firebase5> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  updateFun() {
    print(widget.id);
    FirebaseFirestore.instance.collection('User').doc(widget.id).update({
      "name":  nameController.text,
      "age":   ageController.text,
      "place": placeController.text
    });
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    nameController.text=widget.name;
    ageController.text=widget.age;
    placeController.text=widget.place;
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
      child: Column(
      children: [
      TextFormField(
      controller:nameController ,
      keyboardType:  TextInputType.name,
      decoration: InputDecoration(
        labelText: "name:${widget.age}",
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
    controller:ageController ,
    keyboardType:  TextInputType.number,
    decoration: InputDecoration(
    labelText: "age:${widget.age}",
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
    controller:placeController ,
    keyboardType:  TextInputType.name,
    decoration: InputDecoration(
    labelText: "palce:${widget.age}",
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
        updateFun();
      },
      child: Container(
      height: height*0.07,
      width: width*0.7,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(width*0.1),
      color: ColorConstant.fourColor,
      ),
      child: Center(
      child: Text("Update",
      style:TextStyle(
      fontSize: width*0.05,
      fontWeight: FontWeight.w600,
      color: ColorConstant.secondColor
      ),
      ),
      ),
      ),
    )])));
  }
}
