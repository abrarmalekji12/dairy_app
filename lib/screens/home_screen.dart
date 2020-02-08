import 'package:flutter/material.dart';
import '../screens/carousel_screen.dart';
import '../search.dart';
import '../categoriey.dart';
import '../screens/cart_screen.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../screens/favorite_screen.dart';
import '../screens/subscription_screen.dart';
import '../real_bottom_bar.dart';
import '../drawer.dart';
class HomeScreen extends StatelessWidget {
static const homeRoute='/homeRoute';
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        height: 1000,
        child: Stack(children: <Widget>[
              
          Container(
            
              decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('assets/images/back.jpeg'),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(Colors.black12,BlendMode.lighten),
                      ),
                      color:Color.fromRGBO(150, 150, 150, 0.8),
                    // colorBlendMode: BlendMode.modulate,
                      )),
           Column(
            children: <Widget>[
              SearchBox(),
              // SizedBox(height:10,),
             CarouselScreen(),
             // SizedBox(height:40,),
            Expanded(child:Categories()),
            ],
          )
        ]));
       
        
        
  }
}
