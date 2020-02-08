import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  
  static const cartRoute='/cart_Route';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('cart')),
      body:Center(child: Text('cart'),),
    );
  }
}