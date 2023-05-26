
import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: const Text("My App"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
        body:Center(
          child: Container(
            width: 260,
            height: 260,
            decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(
                width: 25,
                color: Colors.teal,
              ),
            ),
            //color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            child: Text("OOOO",
              style: TextStyle(
                fontSize: 110,
                letterSpacing: -40,
                color: Colors.black54,
              ),

            ),
          ),
        ) ,
       // backgroundColor: Colors.lightGreen,
      ),
    ),
  );
}