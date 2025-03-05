import 'package:clot/firebase/modelpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constant/colorconstant.dart';
import '../main.dart';

class Firebase3 extends StatefulWidget {
  final StudentModel studentModel;
  const Firebase3({super.key,required this.studentModel });

  @override
  State<Firebase3> createState() => _Firebase3State();
}

class _Firebase3State extends State<Firebase3> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController placeController = TextEditingController();
 updateFun(){
   FirebaseFirestore.instance.collection('User').doc(widget.studentModel.id).update(widget.studentModel.copyWith(name: nameController.text,age: ageController.text).toMap());
   Navigator.pop(context);
 }
  @override
  Widget build(BuildContext context) {
    nameController.text=widget.studentModel.name;
    ageController.text=widget.studentModel.age;
    placeController.text=widget.studentModel.place;
    return  Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller:nameController ,
              keyboardType:  TextInputType.name,
              decoration: InputDecoration(
                labelText: "name:${widget.studentModel.name}",
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
                labelText: "age:${widget.studentModel.age}",
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
              controller:placeController ,
              keyboardType:  TextInputType.name,
              decoration: InputDecoration(
                labelText: "palce:${widget.studentModel.place}",
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
            ),
          ],
        ),
      ),
    );
  }
}
