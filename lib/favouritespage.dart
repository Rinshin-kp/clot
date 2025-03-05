import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Favouritespage extends StatefulWidget {
  const Favouritespage({super.key});

  @override
  State<Favouritespage> createState() => _FavouritespageState();
}
class _FavouritespageState extends State<Favouritespage> {
  List favourites=[
    {
     "img":ImageConstant.rectangle,
      "text":"NikeFuel Pack", "price":"\$ 32.00",
  },
    {
      "img":ImageConstant.rectangle1,
      "text":"Nike show X Rush ","price":"\$ 204",
    },
    {
      "img":ImageConstant.rectangle2,
      "text":"Men's Tshirt ","price":"\$ 45.00",
    },
    {
      "img":ImageConstant.rectangle3,
      "text":"Men's Skate Tshirt ","price":"\$ 4.00",
    },
    {
      "img":ImageConstant.rectangle4,
      "text":"Men's back Tshirt ","price":"\$ 3.00",
    },{
      "img":ImageConstant.rectangle5,
      "text":"Men's vintage Tshirt ","price":"\$ 6.00",
    },
  ];
  bool love=false;
  List fav = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.secondColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.secondColor,
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(width*0.1),
              child: Center(child: Text("Favourites(12)",
                style: TextStyle(
                  fontSize: width*0.06,
                  fontWeight: FontWeight.w600
                ),
              )
              ),
            ),
            GridView.builder(
              itemCount:favourites.length,
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
                                image: DecorationImage(image: AssetImage(favourites[index]["img"]),
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(favourites[index]["text"],
                                  style: TextStyle(
                                      fontSize: width*0.04
                                  ),),
                                Text("${favourites[index]['price']}",
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
                               if( fav.contains(favourites[index])){
                                 fav.remove(favourites[index]);
                               }else{
                                 fav.add(favourites[index]);
                               }
                                setState(() {
                                });
                              },
                              child: Icon(Icons.favorite,
                                color: fav.contains(favourites[index])?ColorConstant.primaryColor:ColorConstant.red,
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
