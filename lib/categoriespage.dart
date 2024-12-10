import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Categoriespage extends StatefulWidget {
  const Categoriespage({super.key});

  @override
  State<Categoriespage> createState() => _CategoriespageState();
}

class _CategoriespageState extends State<Categoriespage> {
  TextEditingController searchcontroller= TextEditingController();
  List Product=[
    {
      "img": ImageConstant.hoodies,
      "text":"Hoodies",
  },
    {
      "img":ImageConstant.accessories,
      "text":"Accessories"
    },
    {
      "img": ImageConstant.shorts,
      "text": "Shorts"
    }, {
      "img": ImageConstant.shoes,
      "text":"Shoes"
    }, {
      "img": ImageConstant.bags,
      "text":"Bags"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_sharp),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(width*0.04),
              child: SizedBox(height: height*0.08 ,
                child: Container(
                  height: height*0.2,
                  width: width*0.95,
                  child: TextFormField(
                    controller:searchcontroller ,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      labelText: "Search",
                      prefixIcon: Icon(Icons.search),
                      labelStyle: TextStyle(
                        fontSize:  width*0.05,
                      ),
                      suffixIcon: Padding(
                        padding:  EdgeInsets.all(width*0.03),
                        child: Icon(Icons.clear),
                      ),
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.04),
                          borderSide:BorderSide(
                              color: ColorConstant.thirdColor
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.08),
                          borderSide:BorderSide(
                              color: ColorConstant.thirdColor,
                          )
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right: width*0.26),
              child: Text("Shop by Categories",
                style: TextStyle(
                  fontSize: width*0.07,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(
              height: width*0.03,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: Product.length,
              itemBuilder: (context, index) {
                return   Column(
                children: [
                  Container(
                    height: height*0.1,
                    width: width*0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.02),
                        color: ColorConstant.nineth
                    ),
                    child: Center(
                      child: ListTile(
                        leading: CircleAvatar(
                        radius:width*0.1 ,
                          backgroundColor: ColorConstant.secondColor,
                           backgroundImage: AssetImage(Product[index]["img"]),
                        ),
                        title: Text(Product[index]["text"],
                          style: TextStyle(
                            fontSize: width*0.05,
                            fontWeight: FontWeight.w600 ,
                          ),
                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: width*0.03,
                  ),
                ],
              );
            },)

          ],

        ),
      ),
    );
  }
}
