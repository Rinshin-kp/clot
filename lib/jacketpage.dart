import 'package:flutter/material.dart';

import 'constant/colorconstant.dart';
import 'constant/imageconstant.dart';
import 'main.dart';

class Jacketpage extends StatefulWidget {
  const Jacketpage({super.key});
  @override
  State<Jacketpage> createState() => _JacketpageState();
}
class _JacketpageState extends State<Jacketpage> {
  TextEditingController searchcontroller= TextEditingController();
  List fav = [];
  bool a =false;
  bool b= false;


  List Jacket=[
    {
      "img":ImageConstant.jacket,
      "text":"Mens jacket", "price":"\$ 57.97",
  },
  {
      "img":ImageConstant.jacket1,
      "text":"Skate jacket", "price":"\$ 150.97",
  },
  {
      "img":ImageConstant.jacket2,
      "text":"workwear jacket", "price":"\$ 280.97",
  },
  {
      "img":ImageConstant.jacket3,
      "text":"Puffer jacket", "price":"\$ 128.97",
  },
  ];
  bool love=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: () {
          Navigator.pop(context);
        },
            child: Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(width*0.05),
              child: TextFormField(
                controller:searchcontroller ,
                keyboardType:  TextInputType.text,
                decoration: InputDecoration(
                  labelText: "search",
                  prefixIcon: Icon(Icons.search),
                  labelStyle:TextStyle(
                    fontSize: width*0.05,
                    ),
                  suffixIcon: Icon(Icons.clear),
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.06),
                      borderSide:BorderSide(
                          color: ColorConstant.thirdColor
                       )
                     ),
                  focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.06),
                      borderSide:BorderSide(
                          color: ColorConstant.thirdColor
                       )
                     ),
                   ),
                 ),
               ),
            SizedBox(height: height*0.02),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: height*0.06,
                    width:width*0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.1),
                      color: ColorConstant.fourColor
                    ),
                    child: Icon(Icons.filter_alt_off_sharp
                        ,color: ColorConstant.secondColor,
                    ),
                  ),
                  SizedBox(width:width*0.02),
                  Container(
                    height: height*0.06,
                    width:width*0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.1),
                      color: ColorConstant.fourColor
                    ),
                    child: Center(
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(context: context, builder: (context) {
                              return Container(
                                  height: height*1,
                                  width: width*1,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.all(width*0.06),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Clear",
                                                style: TextStyle(
                                                  fontSize: width*0.05
                                              ),),
                                            SizedBox(width: width*0.25,),
                                            Text("Deals",
                                              style: TextStyle(
                                                  fontSize: width*0.05,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            SizedBox(width: width*0.25,),
                                            Icon(Icons.clear)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.9,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.07),
                                            color: ColorConstant.grey
                                        ),
                                        child: Padding(
                                          padding:  EdgeInsets.all(width*0.05),
                                          child: Text("OnSale"
                                            ,style: TextStyle(
                                                fontSize: width*0.045
                                            ),),
                                        ),
                                      ),
                                      SizedBox(height: height*0.02),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.9,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.07),
                                            color: ColorConstant.grey
                                        ),
                                        child: Padding(
                                          padding:  EdgeInsets.all(width*0.05),
                                          child: Text("Freeshipping Eligible",
                                            style: TextStyle(
                                                fontSize: width*0.045
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                   )
                                 );
                                },);
                              },
                           child: Text("On Sale",
                            style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width*0.04,
                          color: ColorConstant.secondColor
                            ),
                          ),
                        )),
                  ),
                  SizedBox(width:width*0.02),
                  Container(
                    height: height*0.06,
                    width:width*0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.1),
                      color: ColorConstant.fourColor
                    ),
                   child: Row(
                     children: [
                       Padding(
                         padding:  EdgeInsets.all(width*0.04),
                         child: Text("Price",
                           style: TextStyle(
                             fontSize: width*0.04,
                             fontWeight: FontWeight.w600,
                             color: ColorConstant.secondColor
                         )
                         ),
                       ),
                       InkWell(
                         onTap:  () {
                           showModalBottomSheet(context: context, builder: (context) {
                             return Container(
                                height: height*1,
                                 width: width*1,
                                 child: Column(
                                   children: [
                                     Padding(
                                       padding:  EdgeInsets.all(width*0.06),
                                       child: Row(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Clear",
                                             style: TextStyle(
                                                 fontSize: width*0.05
                                             ),),
                                           SizedBox(width: width*0.25,),
                                           Text("Price",
                                             style: TextStyle(
                                                 fontSize: width*0.05,
                                                 fontWeight: FontWeight.w600
                                             ),
                                           ),
                                           SizedBox(width: width*0.25,),
                                           Icon(Icons.clear)
                                         ],
                                       ),
                                     ),
                                     Container(
                                       height: height*0.08,
                                       width: width*0.9,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(width*0.07),
                                           color: ColorConstant.grey
                                       ),
                                       child: Padding(
                                         padding:  EdgeInsets.all(width*0.05),
                                         child: Text("Min"
                                           ,style: TextStyle(
                                               fontSize: width*0.045
                                           ),),
                                       ),
                                     ),
                                     SizedBox(height: height*0.02),
                                     Container(
                                       height: height*0.08,
                                       width: width*0.9,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(width*0.07),
                                           color: a?ColorConstant.fourColor:ColorConstant.grey

                                       ),
                                       child: Padding(
                                         padding:  EdgeInsets.all(width*0.05),
                                         child: Text("Max",
                                           style: TextStyle(
                                               fontSize: width*0.045
                                           ),
                                         ),
                                       ),
                                     ),
                                   ],
                                 )
                               );
                           },);},
                            child: Icon(Icons.keyboard_arrow_down_rounded,
                              color: b?ColorConstant.fourColor:ColorConstant.grey,
                              size: width*0.09,
                         ),
                       ) ],
                   ),
                  ),
                  SizedBox(width:width*0.02),
                  Container(
                    height: height*0.06,
                    width:width*0.31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.1),
                      color: ColorConstant.fourColor
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(width*0.04),
                          child: Text("Sort by",
                              style: TextStyle(
                                  fontSize: width*0.04,
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstant.secondColor
                              )
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(context: context, builder:(context) {
                              return Container(
                                height: height*1,
                                width: width*1,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                        Padding(
                                          padding:  EdgeInsets.all(width*0.06),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Clear",
                                              style: TextStyle(
                                                fontSize: width*0.05
                                              ),),
                                               SizedBox(width: width*0.25,),
                                              Text("Sort By",
                                                style: TextStyle(
                                                  fontSize: width*0.05,
                                                  fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              SizedBox(width: width*0.25,),
                                              Icon(Icons.clear)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height*0.08,
                                          width: width*0.9,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.07),
                                            color: ColorConstant.grey
                                          ),
                                          child: Padding(
                                            padding:  EdgeInsets.all(width*0.05),
                                            child: Text("Recommended"
                                              ,style: TextStyle(
                                                fontSize: width*0.045
                                            ),),
                                          ),
                                          ),
                                      SizedBox(height: height*0.02),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.9,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.07),
                                            color: ColorConstant.grey
                                        ),
                                         child: Padding(
                                          padding:  EdgeInsets.all(width*0.05),
                                        child: Text("Newest",
                                          style: TextStyle(
                                              fontSize: width*0.045
                                          ),
                                        ),
                                      ),
                                      ),
                                      SizedBox(height: height*0.02),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.9,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.07),
                                            color: ColorConstant.grey
                                        ),
                                        child: Padding(
                                          padding:  EdgeInsets.all(width*0.05),
                                        child: Text("Lowest_HighestPrice",
                                          style: TextStyle(
                                            fontSize: width*0.045
                                          ),
                                        ),
                                      ) ,
                                      ),
                                      SizedBox(height: height*0.02),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.9,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.07),
                                            color: ColorConstant.grey
                                        ),
                                        child: Padding(
                                          padding:  EdgeInsets.all(width*0.05),
                                        child: Text("Highest_LowestPrice",
                                          style: TextStyle(
                                              fontSize: width*0.045
                                          ),),
                                      )
                                      )],
                                  ),
                                ),
                              );
                             },);},
                             child: Icon(Icons.keyboard_arrow_down_rounded,
                              size: width*0.09,
                              color: ColorConstant.secondColor
                          ),
                         ) ],
                    ),
                  ),
                  SizedBox(width:width*0.02),
                  Container(
                    height: height*0.06,
                    width:width*0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.1),
                      color: ColorConstant.fourColor
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(width*0.04),
                          child: Text(" Men",
                              style: TextStyle(
                                  fontSize: width*0.04,
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstant.secondColor
                              )
                          ),
                        ),
                        InkWell(
                         onTap: () {
                         showModalBottomSheet(context: context, builder:(context) {
                           return Container(
                               height: height*1,
                               width: width*1,
                               child: Column(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.all(width*0.06),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Clear",
                                              style: TextStyle(
                                                  fontSize: width*0.05
                                              ),),
                                            SizedBox(width: width*0.25,),
                                            Text("Gender",
                                              style: TextStyle(
                                                  fontSize: width*0.05,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                            SizedBox(width: width*0.25,),
                                            Icon(Icons.clear)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.9,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.07),
                                            color: ColorConstant.grey
                                         ),
                                        child: Padding(
                                          padding:  EdgeInsets.all(width*0.05),
                                          child: Text("Men"
                                            ,style: TextStyle(
                                                fontSize: width*0.045
                                            ),),
                                        ),
                                      ),
                                      SizedBox(height: height*0.02),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.9,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.07),
                                            color: ColorConstant.grey
                                        ),
                                        child: Padding(
                                          padding:  EdgeInsets.all(width*0.05),
                                          child: Text("Women",
                                            style: TextStyle(
                                                fontSize: width*0.045
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: height*0.02),
                                      Container(
                                        height: height*0.08,
                                        width: width*0.9,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(width*0.07),
                                            color: ColorConstant.grey
                                        ),
                                        child: Padding(
                                          padding:  EdgeInsets.all(width*0.05),
                                          child: Text("Kids",
                                            style: TextStyle(
                                                fontSize: width*0.045
                                            ),
                                          ),
                                        ) ,
                                      ),
                                     ],
                                   ),
                                );
                             });
                           },
                            child: Icon(Icons.keyboard_arrow_down_rounded,
                              size: width*0.09,
                              color: ColorConstant.secondColor
                             ),
                          ) ],
                       ),
                   ) ],
                ),
             ),
            SizedBox(height: height*0.03),
            Padding(
              padding:  EdgeInsets.only(right:width*0.5),
              child: Text("53 Reslut Found",
                style: TextStyle(
                  fontSize: width*0.05,
                ),
              ),
            ),
            SizedBox(height: height*0.04),
            GridView.builder(
              itemCount:4,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: height*0.06,
                  crossAxisSpacing: width*0.04,
                  mainAxisExtent: width*1
              ),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                        children:[
                          Container(
                            height: height*0.44,
                            width: width*0.6,
                            decoration: BoxDecoration(
                                color: ColorConstant.nineth,
                                borderRadius: BorderRadius.circular(width*0.04),
                                 image: DecorationImage(image: AssetImage(Jacket[index]["img"]),
                                ),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(Jacket[index]["text"],
                                  style: TextStyle(
                                      fontSize: width*0.04
                                  ),),
                                Text("${Jacket[index]['price']}",
                                  style: TextStyle(
                                      fontSize: width*0.05,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),],
                            ),
                          ),
                          Positioned(
                            right:width*0.03,
                            top: height*0.02,
                            child:InkWell(
                              onTap: () {
                                if( fav.contains(Jacket[index])){
                                  fav.remove(Jacket[index]);
                                }else{
                                  fav.add(Jacket[index]);
                                }
                                setState(() {
                                });
                              },
                              child: Icon(Icons.favorite,
                                color: fav.contains(Jacket[index])?ColorConstant.primaryColor:ColorConstant.red,
                              ),

                            ),
                          ),
                        ]
                    ),
                  ],
                );
              },
            )],
        ),
      ),
    );
  }
}
