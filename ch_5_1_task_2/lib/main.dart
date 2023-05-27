
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("Misson of RNW"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          //alignment: Alignment.center,
          child: Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              border: Border(
                left: BorderSide(
                  width: 10,
                  color: Colors.red,
                ),
              )
            ),
            alignment: Alignment.center,
            child: Text.rich(
              //textAlign: TextAlign.center,
              TextSpan(
                children: [
                  TextSpan(
                    text: "Shaping ",
                    style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.black ),
                  ),
                  TextSpan(
                    text: '"skills" ',
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                  TextSpan(
                    text: 'for ',
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                  TextSpan(
                    text: '"scaling" ',
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                  TextSpan(
                    text: 'higher\n',
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                  TextSpan(
                    text: '  -RNW',
                    style: TextStyle(fontSize: 17,color: Colors.black),
                  ),
                ],
              ),

            ),
          ),
        ),
      ) ,
    ),
  );
}