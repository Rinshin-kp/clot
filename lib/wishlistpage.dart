import 'package:clot/constant/colorconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

class Wishlistpage extends StatefulWidget {
  const Wishlistpage({super.key});

  @override
  State<Wishlistpage> createState() => _WishlistpageState();
}

class _WishlistpageState extends State<Wishlistpage> {
  bool Love=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        title: Center(
          child: Text('Wishlist',style: TextStyle(
              fontWeight: FontWeight.w600
          ),),
        ),),
      body: Column(
        children: [
        Padding(
          padding:  EdgeInsets.all(width*0.06),
          child: Container(
          height: height*0.1,
          width: width*0.9,
          decoration: BoxDecoration(
              color: ColorConstant.nineth,
              borderRadius: BorderRadius.circular(8)
          ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: () {
                    Love=!Love;
                    setState(() {

                    });
                  },
                    child: Icon(Icons.favorite,
                      color: Love?ColorConstant.primaryColor:ColorConstant.red,
                    size: width*0.1,),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('My Favourite',
                      style: TextStyle(
                        fontWeight:FontWeight.w700,
                          fontSize: width*0.05

                      ),),
                    ),
                    Text('12 Products',
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    ),),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:width*0.3),
                      child: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ],
                )

              ],
            ),
              ),
        ),
          Column(
            children: [
              Padding(
                padding:  EdgeInsets.all(17),
                child: Container(
                  height: height*0.1,
                  width: width*0.9,
                  decoration: BoxDecoration(
                      color: ColorConstant.nineth,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: InkWell(onTap: () {
                          Love=!Love;
                          setState(() {

                          });
                        },
                          child: Icon(Icons.favorite,
                            color: Love?ColorConstant.primaryColor:ColorConstant.red,
                            size: width*0.1,),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('T-Shirts',
                              style: TextStyle(
                                fontWeight:FontWeight.w700,
                                fontSize: width*0.05
                              ),),
                          ),
                          Text('4 products',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,

                            ),),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left:width*0.43),
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
