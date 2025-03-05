import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';
class RatingPage extends StatefulWidget {
  final String name;
  final String image;
  final String price;
  const RatingPage({super.key, required this.name, required this.image, required this.price});

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  List rate=['S','M','L','XL'];
  String SelectText= "Small";
  var dropdown=["Small","Medium","Large","XL"];

  List<Color> Coloress =[Colors.black, Colors.pink,Colors.red, Colors.green,Colors.yellow,Colors.blue];
  String SelectColor="black";
  List<String> Colores=["balck","pink","red","green","yellow","blue"];
  String? dropDownValue;
  Color? ColorValue;
  int text=0;
  int Count=0;

  List Jacket=[{
    "img":ImageConstant.men
  },
    {
      "img":ImageConstant.jak
    },
    {
      "img":ImageConstant.jacket3
    }
  ];
  bool love=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios_new)),
        actions: [
          Padding(
            padding: EdgeInsets.all(width*0.05),
            child:InkWell(
                onTap: () {
                  love=!love;
                  setState(() {
                  });
                },
                child: Icon(Icons.favorite,
                  color: love?ColorConstant.primaryColor:ColorConstant.red,
                ),
          )
          )],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*0.1,),
            CarouselSlider.builder(
                itemCount:Jacket.length,
                options:CarouselOptions(
                  height: height*0.4,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(
                    seconds: 1
                  ),
                  viewportFraction: 0.55,
                ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    height: height*1,
                    width: width*0.53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.04),
                       image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.cover
                       )
                    ),
                  );
              },
            ),
            SizedBox(height: height*0.03,),
            Padding(
              padding:  EdgeInsets.only(right: width*0.33),
              child: Text("Mens Harrington Jacket",
              style: TextStyle(
                fontSize:width*0.05,
                fontWeight: FontWeight.w600
              ),),
            ),
            SizedBox(height: height*0.02,),
            Padding(
              padding:EdgeInsets.only(right: width*0.78),
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
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Size",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.04,
                  ),),
                 Text (rate[dropdown.indexOf(SelectText)],
                 style: TextStyle(
                   fontSize: 0.06,
                   fontWeight: FontWeight.w600,
                 ),),
              DropdownButton(
                icon: Icon(Icons.keyboard_arrow_down_rounded,
                  size: width*0.07
                ),
                hint: Text("S"),
                value: dropDownValue,
                items: dropdown.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropDownValue = newValue; // Update the selected value
                  });
                },
              ),
             ] ),
            ),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.08,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.2),
                color: ColorConstant.fifthColor,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Color",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width*0.04,
                  ),),
                 SizedBox(width:width*0.04),
                  DropdownButton(
                    icon: Icon(Icons.keyboard_arrow_down_rounded,
                        size: width*0.07
                    ),
                    hint:Padding(
                      padding:  EdgeInsets.only(right: width*0.13),
                      child: CircleAvatar(
                        radius: width*0.02,
                        backgroundColor: Colors.red,
                      ),
                    ),
                    value: ColorValue,
                    items: Coloress.map((Color item) {
                      return DropdownMenuItem(
                        value: item,
                        child: CircleAvatar(
                          radius: width*0.02,
                            backgroundColor: item),
                      );
                    }).toList(),
                    onChanged: (Color? newValue) {
                      setState(() {
                        ColorValue = newValue; // Update the selected value
                      });
                    },
                  ),
             ] ),
            ),
            SizedBox(height: height*0.02,),

            Container(
             height: height*0.08,
             width:width*0.9,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(width*0.2),
               color: ColorConstant.fifthColor,
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
               Text("Quantity",
               style: TextStyle(
                 fontWeight: FontWeight.w600,
                 fontSize: width*0.04,
               ),),
              CircleAvatar(
                radius: width*0.06,
                backgroundColor: ColorConstant.fourColor,
                  child: InkWell(
                    onTap: () {
                      Count++;
                      setState(() {
                      });
                    },
                      child: Icon(Icons.add)),
                ),
                  Text(Count.toString()),
                 CircleAvatar(
                radius: width*0.06,
                   backgroundColor: ColorConstant.fourColor,
                   child: InkWell(
                     onTap:  () {
                    Count<=0?0:Count--;
                    setState(() {
                    });
                  },
                       child: Icon(Icons.remove))),
               ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(width*0.06),
              child: Text("Bulit for life and made to last, this full zip-corduroy \njacket is part of Nike Life collection. The spacious fit gives you pelnty of room to layerUnderneath,while the soft corduroy keeps it causal timeless"
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right:width*0.44),
              child: Text("Shipping & Returns",
                style: TextStyle(
                fontSize: width*0.05,
                fontWeight:FontWeight.w600
              ),),
            ),
            SizedBox(height: height*0.01,),
            Padding(
              padding:  EdgeInsets.only(right:width*0.05),
              child: Text("Free standered shipping and free 60-days returns"),
            ),
            SizedBox(height: height*0.01,),
            Padding(
              padding:  EdgeInsets.only(right:width*0.7),
              child: Text("Reviews",
                style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight:FontWeight.w600
                ),),
            ),
            SizedBox(height: height*0.02,),
            Padding(
              padding:  EdgeInsets.only(right:width*0.6),
              child: Text("4.5 Ratings",
                style: TextStyle(
                    fontSize: width*0.06,
                    fontWeight:FontWeight.w600
                ),),
            ),
            SizedBox(height: height*0.01,),
            Padding(
              padding:  EdgeInsets.only(right: width*0.7),
              child: Text("213 Reviews"),
            ),
            SizedBox(height: height*0.02,),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(width*0.03),
                  child: CircleAvatar(
                    radius: width*0.07,
                    backgroundImage: AssetImage(ImageConstant.ellipse1),
                  ),
                ),
                Text("Alex Morgan",
                style: TextStyle(
                  fontSize: width*0.05,
                  fontWeight: FontWeight.w600
                ),),
                SizedBox(width: height*0.1,),
                AnimatedRatingStars(
                  filledColor: ColorConstant.fourColor,
                  maxRating: 5,
                  starSize: width*0.03,
                  initialRating: 3.1,
                  onChanged:(rating){
                    setState(() {
                      rating=rating;
                    });
                  },
                  customFilledIcon:Icons.star ,
                  customEmptyIcon:Icons.star_border,
                  customHalfFilledIcon: Icons.star_half,)
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.04),
              child: Text("Gucci transcribes its hertiage creativity,and innovation into a plenitude of collections. From staple items to distinctive accessories"),
            ),
            Padding(
              padding:  EdgeInsets.only(right:width*0.64),
              child: Text("12 Days ago",
                  style: TextStyle(
                      fontSize: width*0.05,
                      fontWeight: FontWeight.w600
                  )),
                  ),
                 SizedBox(height: height*0.02,),
                   Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(width*0.03),
                        child: CircleAvatar(
                          radius: width*0.07,
                          backgroundImage: AssetImage(ImageConstant.ellipse2),
                        ),
                      ),
                         Text("Alex Morgan",
                           style: TextStyle(
                            fontSize: width*0.05,
                            fontWeight: FontWeight.w600
                        ),
                         ),
                      SizedBox(width: height*0.1,),
                      AnimatedRatingStars(
                        filledColor: ColorConstant.fourColor,
                          maxRating: 5,
                          starSize: width*0.03,
                          initialRating: 3.1,
                          onChanged:(rating){
                          setState(() {
                            rating=rating;
                          });
                          },
                          customFilledIcon:Icons.star ,
                           customEmptyIcon:Icons.star_border,
                        customHalfFilledIcon: Icons.star_half,)
                    ]),
               Padding(
                 padding:  EdgeInsets.all(width*0.04),
                 child: Text("Gucci transcribes its hertiage creativity,and innovation into a plenitude of collections. From staple items to distinctive accessories"),),
                  Padding(
                  padding:  EdgeInsets.only(right:width*0.64),
                    child: Text("12 Days ago",
                     style: TextStyle(
                      fontSize: width*0.05,
                      fontWeight: FontWeight.w600
                  )),
            ),
            SizedBox(height: height*0.08),
            Container(
              height: height*0.08,
              width:width*0.9,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(width*0.3),
                   color: ColorConstant.fourColor
              ),
              child: Padding(
                padding:  EdgeInsets.all(width*0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.price,
                        style: TextStyle(
                            fontSize: width*0.05,
                            fontWeight: FontWeight.w600
                        )
                    ),
                    Text(widget.name,
                        style: TextStyle(
                            fontSize: width*0.05,
                            fontWeight: FontWeight.w600
                        )
                    )
                  ],
                ),
              ),
            ) ],
        ),)
        );

  }
}
