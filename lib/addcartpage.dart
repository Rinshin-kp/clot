import 'package:clot/constant/colorconstant.dart';
import 'package:clot/main.dart';
import 'package:flutter/material.dart';

class addcartpage extends StatefulWidget {
  const addcartpage({super.key});

  @override
  State<addcartpage> createState() => _addcartpageState();
}

class _addcartpageState extends State<addcartpage> {
  TextEditingController streetaddressController =TextEditingController();
  TextEditingController cityController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        title: Text('Add Cart',style: TextStyle(
          fontWeight: FontWeight.w500
        ),),
      ),
   body: Padding(
     padding:  EdgeInsets.all(15),
     child: Column(
       children: [
         Container(
           height: height*0.2,
           width: width*0.9,
           child: TextFormField(
             controller:streetaddressController ,
             decoration: InputDecoration(
               labelText: "Street Address",
               enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(width*0.2),
                 borderSide: BorderSide(
                   color: ColorConstant.nineth
                 )

               ),
               focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(width*0.4),
                 borderSide: BorderSide(
                   color: ColorConstant.nineth
                 )
               )
             ),
           ),
         )
       ],
     ),
   ),

    );
  }
}
