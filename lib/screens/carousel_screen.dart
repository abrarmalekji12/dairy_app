import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './subscription_screen.dart';
class CarouselScreen extends StatefulWidget {
  @override
  _CarouselScreenState createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  int _current = 0;
  
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Stack(
         
          children: <Widget>[
           
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(Subscription.routeSub);
              },
                          child: CarouselSlider(
                height: 250.0,
                
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                //  reverse: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                pauseAutoPlayOnTouch: Duration(seconds: 6),
                
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius:BorderRadius.circular(20),
                        child:Container(
                      
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(30),
                              ),
                          child: imgUrl == imgList[_current]
                              ? Image.network(imgUrl, fit: BoxFit.fill)
                              : Image.network(imgUrl,
                              
                                  fit: BoxFit.fill,
                                  color: Color.fromRGBO(60, 60, 60, 0.8),
                                  colorBlendMode: BlendMode.modulate)));
                    },
                  );
                }).toList(),
              ),
            ),
            // SizedBox(height:10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: map<Widget>(imgList, (index, url) {
            //     return Container(
            //       width: 10.0,
                 
            //       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: _current == index ? Colors.black : Colors.white,
            //       ),
            //     );
            //   }),
            // ),
          ],
        )
      ],
    ));
  }
}
