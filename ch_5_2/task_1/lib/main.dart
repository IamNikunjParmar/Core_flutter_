
import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Launch Button"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(width: 1.5,color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Center(
              child: Text("GO",style:
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