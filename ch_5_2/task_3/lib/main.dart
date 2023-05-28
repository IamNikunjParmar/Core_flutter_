

import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       // backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("A Shadow Button"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 80,
            width: 190,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.teal.shade100,width: 1,),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.teal.shade300,
                  blurRadius: 10,
                  spreadRadius:5,
                ),
              ],
            ),
            child: Center(
              child: Text("Tap",style:
              TextStyle(
                  color: Colors.black,
                  fontSize: 20
              ),
              ),

            ),
          ),
        ),
      ),
    ),
  );
}