import 'package:flutter/material.dart';

class TypeOfMilkScreen extends StatelessWidget {

  static const milkTypeScreen='/milkTypeRoute';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Choose milk type')),
      body:Center(child: Text('Choose milk type'),),
    );
  }
}