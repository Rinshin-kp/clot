import 'package:clot/constant/imageconstant.dart';
import 'package:flutter/material.dart';

class Hoddiepage extends StatefulWidget {
  const Hoddiepage({super.key});

  @override
  State<Hoddiepage> createState() => _HoddiepageState();
}

class _HoddiepageState extends State<Hoddiepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(IconConstant.arrow),
      ),
    );
  }
}
