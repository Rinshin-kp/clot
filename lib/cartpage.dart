import 'package:clot/constant/imageconstant.dart';
import 'package:flutter/material.dart';

import 'constant/colorconstant.dart';
import 'main.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  TextEditingController couponcontroller= TextEditingController();
  List image=[
    {
      "img": ImageConstant.image2,
      "text":"Men's Harrington jacket",
      "text1": "Size- M  Color - Lemon",
      "text2":"\$148"
    },
    {
      "img":ImageConstant.image1,
      "text":"Men's coaches jacket",
      "text1": "Size- M  Color - Balck",
      "text2": "\$52.00"
    }
    ];
  int count=0;
  int  text=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: Icon(Icons.arrow_back_ios_new),
     ), 
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(width*0.04),
              child: Text("Cart",
                style: TextStyle(
                  fontSize: width*0.06,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: width*0.6),
              child: Text("Remove All",
                style: TextStyle(
                  fontSize: width*0.05
                ),
              ),
            ),
            SizedBox(
              height:height*0.04 ,
            ),
         ListView.separated(
           itemCount: image.length,
             shrinkWrap: true,
             itemBuilder:(context, index) {
               return
                   Container(
                     height: height*0.13,
                     width:width*0.8,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(width*0.04),
                       color: ColorConstant.nineth,
                     ),
                     child: Row(
                       children: [
                         Image(image: AssetImage(image[index]["img"])),
                         Column(
                           children: [
                             SizedBox(height: height*0.02,),
                             Text(image[index]["text"],
                             style: TextStyle(
                               fontWeight: FontWeight.w700
                             ),),
                         SizedBox(height: height*0.02,),
                         Text(image[index]["text1"],
                           style: TextStyle(
                             color:ColorConstant.grey,
                             fontSize: width*0.04
                           ),
                         ),
                           ],
                         ),

                         Padding(
                           padding:  EdgeInsets.all(width*0.036),
                           child: Row(
                             children: [
                               Column(
                                 children: [
                                   Text(image[index]["text2"],
                                   style: TextStyle(
                                     fontWeight: FontWeight.w700
                                   ),),
                                   SizedBox(height: height*0.012,),
                                   Row(
                                     children: [
                                       CircleAvatar(
                                         backgroundColor: Colors.blue,
                                           child: Icon(Icons.add,
                                           color: ColorConstant.secondColor,)
                                       ),
                                       SizedBox(width:width*0.03),
                                       InkWell(
                                         onTap:  () {
                                           count++;
                                           setState(() {
                                           });
                                         },
                                         child: InkWell(
                                           onTap:  () {
                                             count<=0?0:count;
                                           },
                                           child: CircleAvatar(
                                             backgroundColor: Colors.blue,
                                               child: Icon(Icons.remove,
                                               color: ColorConstant.secondColor,),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                   );
             }, separatorBuilder: (BuildContext context, int index) {return SizedBox(height: height*0.02,
             );
         }, ),
            SizedBox(height: height*0.06,
            ),
            Row(
              children: [
                Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:  EdgeInsets.all(width*0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("sub total",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: width*0.04,
                                  color: ColorConstant.grey
                              ),
                            ),
                            Text("Shipping cost",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: width*0.04,
                                color: ColorConstant.grey
                              ),),
                            Text("Tax",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: width*0.04,
                                  color: ColorConstant.grey
                              ),),Text("Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: width*0.04,
                                  color: ColorConstant.grey
                              ),),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding:  EdgeInsets.all(width*0.04),
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Text("\$200",
                            style: TextStyle(
                              fontWeight: FontWeight.w600
                            ),),
                            Text("\$8.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  )),
                            Text("\$0.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ) , Text("\$208",
                              style: TextStyle(
                                fontSize: width*0.05,
                                  fontWeight: FontWeight.w800),

                            ) ,
                          ],
                        ),
                      ),

                    ))
              ],
            ),
            SizedBox(height: height*0.05,),
             Container(
               height: height*0.2,
               width: width*0.95,
               child: TextFormField(
                 controller: couponcontroller,
                 keyboardType: TextInputType.visiblePassword,
                 textInputAction: TextInputAction.next,
                 autovalidateMode: AutovalidateMode.onUserInteraction,
                 decoration: InputDecoration(
                   labelText: "Enter Coupon Cod",
                   prefixIcon: Icon(Icons.location_disabled_outlined),
                   labelStyle: TextStyle(
                     fontSize:  width*0.05,
                   ),
                   suffixIcon: Padding(
                     padding:  EdgeInsets.all(width*0.03),
                     child: Icon(Icons.arrow_forward_ios_sharp),
                   ),
                   enabledBorder:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(width*0.02),
                       borderSide:BorderSide(
                           color: ColorConstant.thirdColor
                       )
                   ),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(width*0.02),
                       borderSide:BorderSide(
                           color: ColorConstant.thirdColor
                       )
                   ),
                 ),
               ),
             ),
            Container(
              height: height*0.06,
              width: width*0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.3),
                color: ColorConstant.fourColor,
        ),
              child: Center(child: Text("Checkout",
                style: TextStyle(
                  fontSize: width*0.05,
                  color: ColorConstant.secondColor
                ),
              )),
      ),
   ])
      )
    );
  }
}
