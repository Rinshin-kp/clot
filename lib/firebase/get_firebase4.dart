import 'package:clot/firebase/firebase5.dart';
import 'package:clot/firebase/modelpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constant/colorconstant.dart';
import '../main.dart';

class Firebase4 extends StatefulWidget {
  const Firebase4({super.key});

  @override
  State<Firebase4> createState() => _Firebase4State();

}
class _Firebase4State extends State<Firebase4> {

  List<StudentModel> datas=[];
  getData() async {
    var data=await FirebaseFirestore.instance.collection('User').get();
    datas=data.docs.map((e) => StudentModel.fromMap(e.data()),).toList();
    print(datas);
    setState(() {

    });
    print(datas[0].name??'');
  }
  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
        ListView.separated(
        scrollDirection: Axis.vertical,
            itemCount: datas.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: height * 0.1,
                width: width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    color: ColorConstant.fourColor
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.1),
                      child: Column(
                        children: [
                          Text(datas[index].name),
                          Text(datas[index].age),
                          Text(datas[index].place),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.3),
                          child: InkWell(
                              onTap: () {
                                FirebaseFirestore.instance.collection('User').doc(datas[index].id).delete();
                              },
                              child: Icon(Icons.delete)),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Firebase5(
                                name:datas[index].name ,
                                age:datas[index].age,
                                place:datas[index].place,
                                id:datas[index].id  ,),));
                            },
                            child: Icon(Icons.edit))
                      ],
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: height * 0.04,);
            })
       ],
        ),
      ),
    );
  }
      }
