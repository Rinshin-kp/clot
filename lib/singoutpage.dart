import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

class Singoutpage extends StatefulWidget {
  const Singoutpage({super.key});

  @override
  State<Singoutpage> createState() => _SingoutpageState();
}
 List titless=[
   {
     "txt":"Address"
   },
   {
     "txt":"Wishlist"
   },
   {
     "txt":"Payment"
   },
   {
     "txt":"Help"
   },
   {
     "txt":"Support"
   }

];

class _SingoutpageState extends State<Singoutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.secondColor,
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: width*0.1,
              backgroundImage: AssetImage(ImageConstant.prfl),
            ),
          ),
          SizedBox(height: height*0.02,),
          Container(
            width: width*0.9,
            height: height*0.13,
            decoration: BoxDecoration(
              color:ColorConstant.seventhColor,
              borderRadius: BorderRadius.circular(width*0.03,

              )
            ),
            child: Padding(
              padding:  EdgeInsets.all(width*0.01),
              child: Padding(
                padding:  EdgeInsets.all(width*0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Gilbert john",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    Text("Gilbertjones0001@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w200
                    ),),
                    Text("121-1334-7890",
                      style: TextStyle(
                          fontWeight: FontWeight.w200
                      ),),
                  ],
                ),
              ),
            ),


          ),
          SizedBox(height: height*0.02,),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) { return
              Container(
              height: height*0.09,
              width: width*0.9,
              decoration: BoxDecoration(
                  color: ColorConstant.seventhColor,
                  borderRadius: BorderRadius.circular(width*0.04)
              ),
              child: ListTile(
                trailing:Icon(Icons.arrow_forward_ios_rounded) ,
                title: Text(titless[index]("txt")),
              ),
            ); },
            separatorBuilder: (BuildContext context, int index) { return
              SizedBox(height: height*0.02,) ;},
            itemCount: 5,
          )
        ],

      ),
      backgroundColor:ColorConstant.secondColor,
    );
  }
}
