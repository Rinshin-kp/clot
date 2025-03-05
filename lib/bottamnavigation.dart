import 'package:clot/categories%20_page1.dart';
import 'package:clot/constant/colorconstant.dart';
import 'package:clot/notificationpage2.dart';
import 'package:clot/order3page.dart';
import 'package:clot/orderpage.dart';
import 'package:clot/singoutpage.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'notificationpage.dart';

class BottamNavigation extends StatefulWidget {
  const BottamNavigation({super.key});

  @override
  State<BottamNavigation> createState() => _BottamNavigationState();
}

class _BottamNavigationState extends State<BottamNavigation> {

  int selectindex=0;
  List pages= [
     CategoriesPage1(name: '',),
    Notificationpage(),
    Orderpage(),
  Singoutpage(),
  Order3page(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectindex],
        bottomNavigationBar:BottomNavigationBar(
          selectedItemColor: ColorConstant.fourColor,
            unselectedItemColor: ColorConstant.primaryColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (value) {
            selectindex =value;
            setState(() {
            });
            },
            currentIndex: selectindex,
            items: [
              BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home"
               ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_active_outlined ,),
                label: "Notification"
                  ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_outlined ),
                label: "Message"
                  ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervisor_account_rounded ),
                label: "account"
                    ),
                    ] )
                   );
  }
}
