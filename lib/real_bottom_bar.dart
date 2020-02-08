import 'package:dairy_app/screens/history_screen.dart';
import 'package:dairy_app/screens/orders_screen.dart';
import 'package:dairy_app/screens/payment_screen.dart';
import 'package:dairy_app/screens/profile_screen.dart';
import 'package:dairy_app/screens/settings_screen.dart';
import 'package:dairy_app/screens/wallet_screen.dart';

import './screens/home_screen.dart';
import './screens/favorite_screen.dart';
import './screens/subscription_screen.dart';
import 'package:flutter/material.dart';
import './screens/cart_screen.dart';
import './screens/favorite_screen.dart';
import './drawer.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  Widget createItems(
      IconData icon, String title, String subtitle, Function click) {
    return Container(

      padding: EdgeInsets.only(top: 10),
      child: ListTile(
        onTap: click,
        leading: Icon(
          icon,
          size: 26,
          color: Colors.black54,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'NotoSansKR',
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
  List<Map<String, Object>> pages = [
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
   return pages[selectpageIndex]['page'];
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: Drawer(
                child: Container(
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage('assets/images/drawer.jpg'),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
                      ),
                      //  color:Color.fromRGBO(150, 150, 150, 0.9),
                      // colorBlendMode: BlendMode.modulate,
                    ),
                    padding: EdgeInsets.only(top: 60, left: 0),
                    child:Column(
                      children: <Widget>[
                        Expanded(child:createItems(Icons.supervised_user_circle, 'Profile',
                            'view,edit your details', () {
                            pages[0]['page']=new ProfileScreen();
                            selectPage(0);
                            setState(() {

                            });
                            Navigator.pop(context);
                            })),
                        Expanded(
                          child: createItems(
                              Icons.history, 'history', 'previous orders and payments',(){
                            pages[0]['page']=new HistoryScreen();
                            selectPage(0);
                            setState(() {

                            });
                            Navigator.pop(context);
                          }),
                        ),
                        Expanded(
                          child: createItems(Icons.record_voice_over, 'orders',
                              'keep track of current orders',(){
                                pages[0]['page']=new OrderScreen();
                                selectPage(0);
                                setState(() {

                                });
                                Navigator.pop(context);
                              }),
                        ),
                        Expanded(
                          child: createItems(Icons.payment, 'payment details',
                              'link your account for quick transaction',(){
                                pages[0]['page']=new PaymentDetailsScreen();
                                selectPage(0);
                                setState(() {

                                });
                                Navigator.pop(context);
                              }),
                        ),
                        Expanded(
                          child: createItems(Icons.account_balance_wallet, 'wallet',
                              'manage your personalized wallet',(){
                                pages[0]['page']=new WalletScreen();
                                selectPage(0);
                                setState(() {

                                });
                                Navigator.pop(context);
                              }),
                        ),
                        new Divider(color:Colors.grey,thickness: 2.0,),
//                        SizedBox(height: 160),
                        Expanded(child:createItems(Icons.settings, 'settings', 'change setting',(){
                          pages[0]['page']=new SettinsScreen();
                          selectPage(0);
                          setState(() {

                          });
                          Navigator.pop(context);
                        })),

                        // createItems(),
                      ],
                    ))),
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              actions: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: (){
                        Navigator.of(context).pushNamed(CartScreen.cartRoute);
                    },
                      child: Icon(
                    Icons.shopping_cart,
                    size: 25,
                  )),
                ),
              ],
              title: Text(
                pages[selectpageIndex]['title'],
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              //   backgroundColor: Colors.lightGreen
            ),
            body:selectScreen(),
            
           
            bottomNavigationBar:CurvedNavigationBar(
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
            )
            )
            );
  }
}
