


import 'package:flutter/material.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App "),
          centerTitle: true,
          leading: Icon(Icons.menu),
          backgroundColor: Colors.red,

        ),
        body: Center(
          child: Text("Red and white Group of institutes\n One Step in changing Education Chain...",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ),
  );
}