import 'package:clot/firebase/new_model.dart';
import 'package:clot/firebase/new_page2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constant/colorconstant.dart';
import '../main.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController qulificationController = TextEditingController();
  jet() async {
    final student=NewModel(
      name: nameController.text,
      age: ageController.text,
      place: placeController.text,
      qulification:qulificationController.text,
      id: '',
    );
    await FirebaseFirestore.instance.collection("set").add(student.toMap()).then((value) {
      value.update(student.copyWith(id: value.id).toMap());
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
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
          TextFormField(
        controller:qulificationController,
        keyboardType:  TextInputType.name,
        decoration: InputDecoration(
          labelText: "qulification",
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
          jet();
         Navigator.push(context,MaterialPageRoute(builder: (context) => NewPage2(),));
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
      )],
      ),
    );
  }
}
