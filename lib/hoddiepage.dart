import 'package:clot/constant/imageconstant.dart';
import 'package:flutter/material.dart';

import 'categories _page1.dart';
import 'constant/colorconstant.dart';
import 'main.dart';

class Hoddiepage extends StatefulWidget {
  const Hoddiepage({super.key});

  @override
  State<Hoddiepage> createState() => _HoddiepageState();
}

class _HoddiepageState extends State<Hoddiepage> {
  bool love=false;
  List fav = [];

  @override
  List hoodies=[
    {
      "img":ImageConstant.hoodi3,
      "text":"Mens  pullover Hoo...",
      "price":"\$ 100.00",
    },{
      "img":ImageConstant.hoodi2,
      "text":" fleece pullover Hoo...",
      "price":"\$ 150.97",
    },{
      "img":ImageConstant.hoodi4,
      "text":" fleece skate Hoodie",
      "price":"\$ 110.00",
    },{
      "img":ImageConstant.hoodi1,
      "text":"Max cirro mens sildes ",
      "price":"\$ 55.00",
    },{
      "img":ImageConstant.hoodi5,
      "text":"Men Monogram Hoodie ",
      "price":"\$ 52.97",
    },{
      "img":ImageConstant.hoodi6,
      "text":"Men pullover Basketball ",
      "price":"\$ 105.00",
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  leading: InkWell(
    onTap: () {
      Navigator.pop(context);},
      child: Icon(Icons.arrow_back_ios_new)),
),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right:width*0.5),
              child: Text("Hoodies(240)",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: width*0.05
              ),
              ),
            ),
            SizedBox(height:height*0.05 ,),
            GridView.builder(
              itemCount:hoodies.length,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: height*0.02,
                  crossAxisSpacing: width*0.04,
                  mainAxisExtent: width*1
              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                          children:[
                            Container(
                              height: height*0.47,
                              width: width*0.6,
                              decoration: BoxDecoration(
                                  color: ColorConstant.nineth,
                                  borderRadius: BorderRadius.circular(width*0.04),
                                  image: DecorationImage(image: AssetImage(hoodies[index]["img"]),
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(hoodies[index]["text"],
                                    style: TextStyle(
                                        fontSize: width*0.04
                                    ),),
                                  Text("${hoodies[index]['price']}",
                                    style: TextStyle(
                                        fontSize: width*0.05,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),],
                              ),
                            ),
                            Positioned(
                              right:width*0.04,
                              top: height*0.02,
                              child:InkWell(
                                onTap: () {
                                  if( fav.contains(hoodies[index])){
                                    fav.remove(hoodies[index]);
                                  }else{
                                    fav.add(hoodies[index]);
                                  }
                                  setState(() {
                                  });
                                },
                                child: Icon(Icons.favorite,
                                  color: fav.contains(hoodies[index])?ColorConstant.primaryColor:ColorConstant.red,
                                ),

                              )
                            ),
                          ]
                      ),
                    ],
                  ),
                );
              },
            )],
        ),
      )
      );

  }
}
