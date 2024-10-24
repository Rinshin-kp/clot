import 'package:clot/agepage.dart';
import 'package:clot/resetpage.dart';
import 'package:clot/signpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var height;
var width;
void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return MaterialApp(
      home:Resetpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
