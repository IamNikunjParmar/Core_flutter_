
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Opened Doors"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 250,
            width: 230,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border(
                left: BorderSide(
                  width: 70,
                  color: Colors.white70,
                ),
                right: BorderSide(
                  width: 70,
                  color: Colors.white70,
                ),
                bottom: BorderSide(
                  width: 35,
                  color: Colors.black,
                ),
                top: BorderSide(
                  width: 35,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
