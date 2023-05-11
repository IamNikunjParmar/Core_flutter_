

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Center(
          child: Text("Hello\n\n\n\n\n\nDart\n\n\n\n\n\nFlutter",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              decorationColor: Colors.amber,
              fontSize:38,
              decoration: TextDecoration.underline,


            ),

          ),
        ),
        backgroundColor: Colors.black,
      ),



    ),
  );
}