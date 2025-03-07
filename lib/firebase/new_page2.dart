import 'package:clot/firebase/new_model.dart';
import 'package:clot/firebase/newpage3.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constant/colorconstant.dart';
import '../main.dart';

class NewPage2 extends StatefulWidget {
  const NewPage2({super.key});

  @override
  State<NewPage2> createState() => _NewPage2State();
}

class _NewPage2State extends State<NewPage2> {
  @override
   build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
        StreamBuilder(
          stream:  FirebaseFirestore.instance.collection("set").snapshots(),
          builder: (context, snapshot) {
              var datas=snapshot.data;
            return ListView.separated(
            scrollDirection: Axis.vertical,
              itemCount: datas!.docs.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                NewModel? details =NewModel.fromMap(datas!.docs[index].data());
                return Container(
                  height: height * 0.2,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.04),
                      color: ColorConstant.fourColor
                  ),
                  child: Row(
                      children: [
                  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(details.name),
                      Text(details.age),
                      Text(details.place),
                      Text(details.qulification),
                    ],
                  ),
                ),
                   Row(
                    children: [
                      InkWell(
                          onTap: () {
                            FirebaseFirestore.instance.collection('set').doc(details.id).delete();

                          },
                          child: Icon(Icons.delete)),
                      SizedBox(
                      width: width*0.1,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Newpage3(
                                newModel:details,
                                name:details.name,
                                age:details.age,
                                place:details.place,
                                qulification:details.qulification,

                              ),));
                          },
                        child: Icon(Icons.edit),
                      )])]));
              },
              separatorBuilder: (BuildContext context, int index) {
                return
                  SizedBox(height: height * 0.04,);
              },);
          }
        )
          ]
        ),
      )
      );

  }
}
