import 'package:flutter/material.dart';


class SearchBox extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
     // height:300,
        width: double.infinity,
      child: TextField(
              decoration: InputDecoration(
                
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.blueGrey,width:2),   
                      ),    
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan,width: 2),
                   ),  
                
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Here',
              
               
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              
              style: TextStyle(
                fontSize: 20,
              ),
            )
    );
  }
}