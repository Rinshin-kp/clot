import 'package:clot/signpage.dart';
import 'package:clot/splashscreen.dart';
import 'package:flutter/material.dart';

var height;
var width;
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  width=MediaQuery.of(context).size.width;
  height=MediaQuery.of(context).size.height;

  return MaterialApp(
  home: Signpage(),
  debugShowCheckedModeBanner: false,
  );
  }}