import 'package:carousel_slider/carousel_slider.dart';
import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({super.key});

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  List rate=[
    'S','M','L','XL'];
  String SelectText= "Small";
  var dropdown=["Small","Medium","Large","XL"];
  String?dropdownvalue;
  int text=0;
  int Count=0;
  List images=[];
  List Jacket=[{
    "img":ImageConstant.jak
  },
    {
      "img":ImageConstant.jak1
    },
    {
      "img":ImageConstant.jak3
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.favorite),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
                itemCount:4,
                options:CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(
                    seconds: 1
                  ),
                  viewportFraction: 0.55,
                ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    height: height*1,
                    width: width*0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                       image: DecorationImage(image: AssetImage(Jacket[index]["img"]),fit: BoxFit.cover
                       )
                    ),
                  );
              },
            ),
            SizedBox(height: height*0.03,),
            Padding(
              padding:  EdgeInsets.only(right: width*0.32),
              child: Text("Mens Harrington Jacket",
              style: TextStyle(
                fontSize:width*0.05,
                fontWeight: FontWeight.w600
              ),),
            ),
            SizedBox(height: height*0.03,),
            Padding(
              padding:EdgeInsets.only(right: width*0.8),
              child: Text("\$148",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: width*0.04,
                color: ColorConstant.fourColor
              ),),
            ),
            SizedBox(height: height*0.04,),
            Container(
              height: height*0.08,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.2),
                color: ColorConstant.fifthColor,
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Size",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.04,

                  ),),
                 Padding(
                   padding:  EdgeInsets.only(left: width*0.49),
                   child: Text (rate[dropdown.indexOf(SelectText)],
                   style: TextStyle(
                     fontSize: 0.06,
                     fontWeight: FontWeight.w600,
                   ),),
                 )

                ],

              ),
            ),


          ],
        ),
      ),
    );
  }
}
