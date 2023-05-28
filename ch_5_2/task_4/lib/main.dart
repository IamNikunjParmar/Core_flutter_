

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade600,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade600,
          title: Text("Gredient Button"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 190,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.blue,
                ],
                stops: [-0.5,1],
              ),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.white, width: 1,),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
                topRight: Radius.circular(40),

              ),
            ),

            child: Center(
              child: Text("Flutter", style:
              TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
