

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("An Indian Flag"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 180,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                colors: [
                  Colors.orange.shade900,
                  Colors.white,
                  Colors.green,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1,0.5,0.9],
              ),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.white, width: 1,),
            ),

            child: Center(
              child: Text("✳️", style:
              TextStyle(
                color: Colors.blue.shade600,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              ),

            ),
          ),
        ),
      ),
    ),
  );
}
