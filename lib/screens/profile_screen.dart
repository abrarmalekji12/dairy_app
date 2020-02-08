import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  
  static const profileScreenRoute='/profile_Scren';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('profile')),
      body:Center(child: Text('profile'),),
    );
  }
}