import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:clot/jacketpage.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  TextEditingController searchcontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.secondColor,
      resizeToAvoidBottomInset: false ,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        backgroundColor: ColorConstant.secondColor,
      ),
      body: Column(
        children: [
      Padding(
        padding:  EdgeInsets.all(width*0.1),
        child: Container(
        height: height*0.06,
          width: width*1,
          child: TextFormField(
            controller: searchcontroller,
            decoration: InputDecoration(
                border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width*0.2),
                    borderSide: BorderSide(
                      color: ColorConstant.grey,
                    ),
                ),
              prefixIcon: Icon(Icons.search),
               suffixIcon: Icon(Icons.clear_rounded),
               focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(width*0.2),
                borderSide:BorderSide(
                )
            ),
            ),
          ),
        ),
      ),
          Container(
            height: height*0.3,
            width: width*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageConstant.search))
            ),
          ),
          Text(" Sorry ,We couldn't find any\n Matching result for your \n              Search.",
            style: TextStyle(
              fontSize: width*0.06
            ),
          ),
          SizedBox(
            height: height*0.03,),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Jacketpage(),));
            },
            child: Container(
              height: height*0.07,
              width: width*0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.1),
                color:ColorConstant.fourColor
              ),
              child: Center(child: Text("Explore Categories",
                style: TextStyle(
                  fontSize: width*0.05,color: ColorConstant.secondColor
                ),
              )),
            ),
          )
        ],

      ),
    );
  }
}
