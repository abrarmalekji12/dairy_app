import 'package:flutter/material.dart';
import '../real_bottom_bar.dart';
import '../screens/home_screen.dart';
import '../screens/favorite_screen.dart';
import '../screens/subscription_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class BrandScreen extends StatefulWidget {
  static const bransScreen = '/brand_Route';

  @override
  _BrandScreenState createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {



  Color color1=Colors.white;
  Color color2=Colors.white;
  Color color3=Colors.white;
  Widget createBrand(String image, String title, Function click) {
    return InkWell(
        onTap: click,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.5),
                    blurRadius: 5,
                  )
                ],
                // color:Colors.red,
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.2), BlendMode.darken)),
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Brands')),
        body: Container(
            margin: EdgeInsets.only(top: 40),
            child: GridView(
                padding: EdgeInsets.all(25),
                children: <Widget>[
                  createBrand('assets/images/amul.jpg', 'Amul', () {
                    print('hello');
                  }),
                  createBrand('assets/images/gokul.png', 'Gokul', () {}),
                  createBrand('assets/images/mahi.png', 'Maahi', () {}),
                  createBrand('assets/images/milma.png', 'Milma', () {}),
                  createBrand('assets/images/nandni.jpg', 'Nandini', () {}),
                  createBrand('assets/images/md.png', 'Mother Dairy', () {}),
                ],
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 30,
                ))
                ),
              
                    // bottomNavigationBar: BottomAppBar(
         /* child: Container(
            color:Colors.indigoAccent,
            height:60,
            child:Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home,size:30),
                color:color1,
                 onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                           color1=Colors.red;
                    });
                 
                 }
                
              ),
              IconButton(
                icon: Icon(Icons.favorite,size:30),
               // color: selectedPage == 2 ? Colors.blue : Colors.grey,
              onPressed: () {
                  Navigator.of(context).pushNamed(FavoriteScreen.routeFav);
                
              }),

             
              IconButton(
                icon: Icon(
                  Icons.subscriptions,size:30
                ),
               // color: selectedPage == 3 ? Colors.blue : Colors.grey,
                 onPressed: () {
                    Navigator.of(context).pushNamed(Subscription.routeSub);
                 }
               
              ),
            ],
          )) */
                //)
                );
          
  }
}
