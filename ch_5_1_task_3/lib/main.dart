

import 'package:flutter/material.dart';



void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Mix-up"),
          centerTitle: true,
        ),
        body: Align(
          child: Container(
            height: 370,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            alignment: Alignment.bottomRight,
            child: Container(
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              alignment: Alignment.bottomRight,
              child: Container(
                width: 270,
                height: 270,
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
                alignment: Alignment.topLeft,
                child: Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),

    ),
  );
}