import 'package:flutter/material.dart';
import '../screens/cart_screen.dart';
import '../drawer.dart';
class FavoriteScreen extends StatelessWidget {
static const routeFav='/favorite';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: DrawerScreen(),
       body:Center(child:Text('Favorite ❤')),
            
    );
  }
}