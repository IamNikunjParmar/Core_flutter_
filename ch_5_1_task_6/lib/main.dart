
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("3D Cube"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.teal,
              border: Border(
                  top:BorderSide(
                    width: 30,
                    color: Colors.teal.shade200,
                  ),
                bottom: BorderSide(
                  width: 30,
                  color: Colors.teal.shade200,
                ),
                left: BorderSide(
                  width: 35,
                  color: Colors.teal.shade300,
                ),
                right: BorderSide(
                  width: 35,
                  color: Colors.teal.shade300,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}