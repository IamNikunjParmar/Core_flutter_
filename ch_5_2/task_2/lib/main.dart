

import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dark Shadow Button"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.red.shade400,width: 1.5,),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 10,
                  spreadRadius:5,
                ),
              ],
            ),
            child: Center(
              child: Text("Tap",style:
              TextStyle(
                  color: Colors.white,
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