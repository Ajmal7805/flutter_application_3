import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int number =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:
         Colors.black,
         title:
          Text("SEARCH YOUR PICTURES",
          style: 
          TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          ),
          actions: [
            Icon(Icons.search,)
          ],
          ),
      body:
      
      Center(
        child: InkWell(
          onTap: () {
            setState(() {
              number =Random().nextInt(6)+1;
              
            });
          },
          child: Image.asset("images/img$number.jpg",
          height:250 ,)
        ),
      ) ,
    );
  }
}