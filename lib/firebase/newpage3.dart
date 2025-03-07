import 'package:clot/firebase/new_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constant/colorconstant.dart';
import '../main.dart';

class Newpage3 extends StatefulWidget {
  final NewModel newModel;
  const Newpage3(
      {super.key,
      required this.newModel,
      required name,
      required age,
      required place,
      required String qulification});

  @override
  State<Newpage3> createState() => _Newpage3State();
}

class _Newpage3State extends State<Newpage3> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController qulificationController = TextEditingController();

  updateFun() {
    FirebaseFirestore.instance.collection('set').doc(widget.newModel.id).update(widget.newModel
            .copyWith(name: nameController.text, age: ageController.text,
                place: placeController.text,
                qulification: qulificationController.text)
            .toMap());
    Navigator.pop(context);

  }

  @override
  Widget build(BuildContext context) {
    nameController.text = widget.newModel.name;
    ageController.text = widget.newModel.age;
    placeController.text = widget.newModel.place;
    qulificationController.text = widget.newModel.qulification;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            controller: nameController,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "name:${widget.newModel.name}",
              labelStyle: TextStyle(
                fontSize: width * 0.05,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width * 0.02),
                  borderSide: BorderSide(color: ColorConstant.thirdColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width * 0.02),
                  borderSide: BorderSide(color: ColorConstant.thirdColor)),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          TextFormField(
            controller: ageController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "age:${widget.newModel.age}",
              labelStyle: TextStyle(
                fontSize: width * 0.05,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width * 0.02),
                  borderSide: BorderSide(color: ColorConstant.thirdColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width * 0.02),
                  borderSide: BorderSide(color: ColorConstant.thirdColor)),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          TextFormField(
            controller: placeController,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "palce:${widget.newModel.place}",
              labelStyle: TextStyle(
                fontSize: width * 0.05,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width * 0.02),
                  borderSide: BorderSide(color: ColorConstant.thirdColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width * 0.02),
                  borderSide: BorderSide(color: ColorConstant.thirdColor)),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          TextFormField(
            controller: qulificationController,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "qulification:${widget.newModel.qulification}",
              labelStyle: TextStyle(
                fontSize: width * 0.05,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width * 0.02),
                  borderSide: BorderSide(color: ColorConstant.thirdColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width * 0.02),
                  borderSide: BorderSide(color: ColorConstant.thirdColor)),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          InkWell(
            onTap: () {
              updateFun();
            },
            child: Container(
              height: height * 0.07,
              width: width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.1),
                color: ColorConstant.fourColor,
              ),
              child: Center(
                child: Text(
                  "Update",
                  style: TextStyle(
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.w600,
                      color: ColorConstant.secondColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
