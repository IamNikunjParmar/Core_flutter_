import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text("Mashal"),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment(0,0),
          child: Container(
            alignment: Alignment(0,-3.05),
            child: Text(

              "🔥",
              style: TextStyle(
                fontSize: 55,
              ),
            ),

            height: 200,
            width: 150,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 35,
                  color: Colors.white,
                ),
                right: BorderSide(
                  width: 35,
                  color: Colors.white,
                ),
                bottom: BorderSide(
                  width: 25,
                  color: Colors.brown.shade400,
                ),
                top: BorderSide(
                  width: 25,
                  color: Colors.brown.shade400,
                ),
              ),
              color: Colors.brown,
            ),

          ),

        ),
        backgroundColor: Colors.white,
      ),
    ),
  );
}