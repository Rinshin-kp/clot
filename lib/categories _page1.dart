import 'package:clot/categoriespage.dart';
import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:clot/emptypage.dart';
import 'package:clot/hoddiepage.dart';
import 'package:clot/ratingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class CategoriesPage1 extends StatefulWidget {
  final String name;
  const CategoriesPage1({super.key, required this.name,});

  @override
  State<CategoriesPage1> createState() => _CategoriesPage1State();
}

class _CategoriesPage1State extends State<CategoriesPage1> {
  TextEditingController searchController = TextEditingController();
  List sex=['Men', 'Women'];
  String SelectText= "Men";
  var dropdown=["Men","Women"];
  String? dropDownValue;

  List categori=[
    {
  "img": ImageConstant.hoodies,
  "text":"Hoodies",
 },
{
    "img":ImageConstant.accessories,
     "text":"Accessories"
},
{
  "img": ImageConstant.shorts,
    "text": "Shorts",
},
    {
     "img": ImageConstant.shoes,
     "text":"Shoes"
},
    {
    "img": ImageConstant.bags,
     "text":"Bags"
  }];
List men =[
  {
  "img":ImageConstant.men,
  "text":"Harrington jacket",
  "price":"\$ 148.00",

},
{
  "img":ImageConstant.chappal,
  "text":"mens sildes",
"price":"\$ 110.00",

},
{
  "img":ImageConstant.jacket2,
  "text":"mens jacket",
"price":"\$ 13.00",

},
{
  "img":ImageConstant.jacket3,
  "text":" pullover jacket",
"price":"\$ 129.00",

}
];List jacket =[
  {
  "img":ImageConstant.dwnld,
  "text":"cotton jacket",
  "price":"\$ 140.00",

},
{
  "img":ImageConstant.jacket1,
  "text":"mens sildes",
"price":"\$ 110.00",

},
{
  "img":ImageConstant.jacket,
  "text":"mens jacket",
"price":"\$ 14.00",

},
{
  "img":ImageConstant.hoodi5,
  "text":" pullover jacket",
"price":"\$ 130.00",

}
];
bool love =false;
  getUserName()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    currentUserName = prefs.get(('user name'));
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:CircleAvatar(
          radius: width*0.09,
          backgroundImage: AssetImage(ImageConstant.ellipse),
        ),
        title:  Center(
          child: Container(
            height: height*0.05,
            width: width*0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.2),
                color: ColorConstant.grey
            ),
            child: Row(
              children: [
           DropdownButton(
            icon: Icon(Icons.keyboard_arrow_down_rounded,
                size: width*0.09
            ),
             hint: Padding(
               padding:  EdgeInsets.all(width*0.03),
               child: Text("Men ${widget.name}"),
             ),
             value: dropDownValue,
            items: dropdown.map((String item) {
              return DropdownMenuItem(
                value: item,
                child: Padding(
                  padding:  EdgeInsets.all(width*0.03),
                  child: Text(item),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropDownValue = newValue; // Update the selected value
              });
            },
          ) ],
            ),
          ),
        ) ,
        actions: [
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>Emptypage() ,));
          },
            child: CircleAvatar(
              backgroundColor: ColorConstant.fourColor,
              radius: width*0.09,
              child: Icon(Icons.shopping_cart_outlined,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(width*0.06),
              child: TextFormField(
                controller:searchController ,
                keyboardType:  TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Search",
                  labelStyle:TextStyle(
                    fontSize: width*0.05,
                      ),
                     prefixIcon: Icon(Icons.search),
                     enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.07),
                      borderSide:BorderSide(
                          color: ColorConstant.thirdColor
                      )
                  ),
                  focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.07),
                      borderSide:BorderSide(
                          color: ColorConstant.thirdColor
                      )
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(width*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",
                    style: TextStyle(
                      fontSize: width*0.06,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  InkWell(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Categoriespage (),));},
                    child: Text("See all",
                      style: TextStyle(
                          fontSize: width*0.06,
                          fontWeight: FontWeight.w600
                      ),),
                  )
                ]
              ),
            ),
             SizedBox(
               height: height*0.15,
               width: width*3,
               child: ListView.builder(
                 itemCount:categori.length,
                 shrinkWrap: true,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context, index) {
                 return  Column(
                   children: [
                     Padding(
                       padding:  EdgeInsets.only(left:width*0.05),
                       child: CircleAvatar(
                           backgroundColor:ColorConstant.nineth,
                            backgroundImage: AssetImage(categori[index]["img"]),
                         radius: width*0.09,
                       ),
                     ),
                     Text(categori[index]["text"],
                     ),
                   ],);},
               ),
             ),
            Padding(
              padding:  EdgeInsets.all(width*0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Top Seling",
                style: TextStyle(
                  fontSize: width*0.05,
                  fontWeight: FontWeight.w600
                ),),
                  InkWell(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Hoddiepage (),));},
                    child: Text("See All", style: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.w600
                    ),),
                  )
                ],
              ),
            ),

            SizedBox(
                height: height*0.5,
                 width: width*4,
              child: ListView.separated(
                itemCount: men.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                 return InkWell(
                   onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => RatingPage(
                         name:men[index]["text"],
                         image: men[index]["img"],
                         price: men[index]["price"],
                       )));},
                   child: Column(
                     children: [
                       Container(
                         height: height*0.4,
                         width: width*0.60,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(width*0.05),
                           color: ColorConstant.nineth,
                           image: DecorationImage(image: AssetImage(men[index]["img"]), fit: BoxFit.cover
                           ),
                         ),
                       ),
                       Text(men[index]["text"], style: TextStyle(
                           fontSize: width*0.05
                         ),
                       ),
                       Text(men[index]["price"],style: TextStyle(
                         fontWeight: FontWeight.w600
                       ),
                       ),
                     ],
                   ),
                 );
               },
                separatorBuilder: (BuildContext context, int index) {return
                  SizedBox(width: width*0.04,
                  ); },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(width*0.03),
                  child: Row(
                    children: [
                      Text("New In ",
                        style: TextStyle(
                            fontSize: width*0.05,
                            fontWeight: FontWeight.w600
                        ),),
                      SizedBox(width: height*0.27,),
                      Text("See All", style: TextStyle(
                          fontSize: width*0.05,
                          fontWeight: FontWeight.w600
                      ),)
                    ],

                  ),
                ),
              ],
            ),
            SizedBox(
              height: height*0.5,
              width: width*4,
              child: ListView.separated(
                itemCount: jacket.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap:  () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => RatingPage(
                       name:jacket[index]["text"],
                        image: jacket[index]["img"],
                         price: jacket[index]["price"],
                           )));},
                    child: Column(
                      children: [
                        Container(
                          height: height*0.4,
                          width: width*0.60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.05),
                            color: ColorConstant.nineth,
                            image: DecorationImage(image: AssetImage(jacket[index]["img"]),fit: BoxFit.cover
                            ),
                          ),
                        ),
                        Text(jacket[index]["text"], style: TextStyle(
                            fontSize: width*0.05
                        ),
                        ),
                        Text(jacket[index]["price"],style: TextStyle(
                            fontWeight: FontWeight.w600
                        ),
                        ),

                      ],
                    ),
                  );

                },
                separatorBuilder: (BuildContext context, int index) {return
                  SizedBox(width: width*0.04,
                  ); },
              ),
            ),
          ],

        ),
      ),
    );
  }
}
