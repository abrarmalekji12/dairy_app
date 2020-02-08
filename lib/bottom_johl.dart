import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/favorite_screen.dart';
import './screens/subscription_screen.dart';


class BottomNavBar extends StatefulWidget {
  

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
 
  final List<Map<String, Object>> pages = [
    {
      'page': HomeScreen(),
      'title': 'Royal Dairy',
    },
    {
      'page': FavoriteScreen(),
      'title': 'Favorite',
    },
    {
      'page': Subscription(),
      'title': 'Subscription',
    },
  ];

  int selectpageIndex = 0;

  void selectPage(int index) {
    setState(() {
      selectpageIndex = index;
    });
  }
Widget selectScreen()
  {
    if(selectpageIndex==0)
      return HomeScreen();
    else if(selectpageIndex==1)
      return FavoriteScreen();
    else
      return Subscription();
  }
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
              backgroundColor: Colors.lightBlue,
              onTap: selectPage,
              color:Colors.red,
              buttonBackgroundColor: Colors.red,
              height: 60,
             // unselectedItemColor: Colors.white,
            //  selectedItemColor: Colors.tealAccent,
            //  currentIndex: selectpageIndex,
            animationDuration: Duration(milliseconds: 200),
            animationCurve: Curves.bounceInOut,
            //index:1,
              items: [
             
                   Icon(Icons.home),
                
              
                   Icon(Icons.favorite),
               
                
                
                  
                   Icon(Icons.subscriptions),
              
                
              ],
            );
  }
}