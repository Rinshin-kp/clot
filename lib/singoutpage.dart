import 'package:clot/addresspage.dart';
import 'package:clot/constant/colorconstant.dart';
import 'package:clot/constant/imageconstant.dart';
import 'package:clot/main.dart';
import 'package:clot/paymentpage.dart';
import 'package:clot/wishlistpage.dart';
import 'package:flutter/material.dart';

class Singoutpage extends StatefulWidget {
  const Singoutpage({super.key});
  @override
  State<Singoutpage> createState() => _SingoutpageState();
}

class _SingoutpageState extends State<Singoutpage> {
  List tite = ["Address", "WishList", "Payment", "Help", "Support"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(width * 0.04),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: width * 0.1,
                  backgroundImage: AssetImage(ImageConstant.ut2),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                width: width * 0.9,
                height: height * 0.13,
                decoration: BoxDecoration(
                    color: ColorConstant.seventhColor,
                    borderRadius: BorderRadius.circular(
                      width * 0.03,
                    )),
                child: Padding(
                  padding: EdgeInsets.all(width * 0.01),
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gilbert john",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Gilbertjones0001@gmail.com",
                          style: TextStyle(fontWeight: FontWeight.w200),
                        ),
                        Text(
                          "121-1334-7890",
                          style: TextStyle(fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: height * 0.09,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        color: ColorConstant.seventhColor,
                        borderRadius: BorderRadius.circular(width * 0.04)),
                    child: ListTile(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Addresspage(),
                                ));
                          case 1:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Wishlistpage(),
                                ));
                          case 2:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Paymentpage(),
                                ));

                        }
                      },
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                      title: Text(tite[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.05,
                          )),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: height * 0.02,
                  );
                },
                itemCount: tite.length,
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Sign Out",
                style: TextStyle(
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.w600,
                    color: ColorConstant.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
