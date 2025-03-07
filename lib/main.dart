import 'package:clot/addcard.dart';
import 'package:clot/addpage.dart';
import 'package:clot/addresspage.dart';
import 'package:clot/agepage.dart';
import 'package:clot/bottamnavigation.dart';
import 'package:clot/cartpage.dart';
import 'package:clot/categories%20_page1.dart';
import 'package:clot/categoriespage.dart';
import 'package:clot/checkout_page.dart';
import 'package:clot/checkout_page1.dart';
import 'package:clot/createpage.dart';
import 'package:clot/emptypage.dart';
import 'package:clot/favouritespage.dart';
import 'package:clot/firebase/add_firbase_page.dart';
import 'package:clot/firebase/authentication2_login.dart';
import 'package:clot/firebase/authentication_page.dart';
import 'package:clot/firebase/delet_firebase2.dart';
import 'package:clot/firebase/new_page.dart';
import 'package:clot/firebase/new_page2.dart';
import 'package:clot/firebase/newpage3.dart';
import 'package:clot/firebase/update_firebase3.dart';
import 'package:clot/firebase/get_firebase4.dart';
import 'package:clot/firebase/firebase5.dart';
import 'package:clot/firebase_options.dart';
import 'package:clot/forgotpage.dart';
import 'package:clot/hoddiepage.dart';
import 'package:clot/jacketpage.dart';
import 'package:clot/notificationpage.dart';
import 'package:clot/notificationpage2.dart';
import 'package:clot/order3page.dart';
import 'package:clot/orderpage.dart';
import 'package:clot/orderpage2.dart';
import 'package:clot/paymentpage.dart';
import 'package:clot/placed_page.dart';
import 'package:clot/ratingpage.dart';
import 'package:clot/resetpage.dart';
import 'package:clot/searchpage.dart';
import 'package:clot/signpage.dart';
import 'package:clot/singoutpage.dart';
import 'package:clot/splashscreen.dart';
import 'package:clot/wishlistpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
var height;
var width;
var currentUserName;

  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return MaterialApp(
      home: NewPage(
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
