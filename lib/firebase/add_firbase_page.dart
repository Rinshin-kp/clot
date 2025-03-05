import 'package:clot/firebase/modelpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../constant/colorconstant.dart';
import '../main.dart';
import '../model/usermodel.dart';

class  FirbasePage extends StatefulWidget {
  const FirbasePage({super.key});
  @override
  State<FirbasePage> createState() => _FirbasePageState();

}
class _FirbasePageState extends State<FirbasePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  add() async {
    final student=StudentModel(name: nameController.text, age: ageController.text, place: placeController.text, id: '');
await FirebaseFirestore.instance.collection("User").add(student.toMap()).then((value) {
  value.update(student.copyWith(id: value.id).toMap());
},);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
            controller:nameController ,
            keyboardType:  TextInputType.name,
            decoration: InputDecoration(
              labelText: "name",
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
                labelText: "age",
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
                labelText: "place",
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
            GestureDetector(
              onTap: () {
                add();
                Navigator.pop(context);
              },
              child: Container(
                height: height*0.07,
                width: width*0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.1),
                  color: ColorConstant.fourColor,
                ),
                child: Center(
                  child: Text("ADD",
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
