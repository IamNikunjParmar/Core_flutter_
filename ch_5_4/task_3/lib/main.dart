

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icons",style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
    body: Align(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey.shade500,
                      offset: Offset(0,10),
                    ),
                  ],
                ),
                child: Text("+",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.grey.shade600
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey.shade500,
                      offset: Offset(0,10),
                    ),
                  ],
                ),
                child: Icon(Icons.account_circle_rounded,
                size: 30,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey.shade500,
                      offset: Offset(0,10),
                    ),
                  ],
                ),
                child: Text("<",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.grey.shade600
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey.shade500,
                      offset: Offset(0,10),
                    ),
                  ],
                ),
                child: Text(">",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.grey.shade600
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey.shade500,
                      offset: Offset(0,10),
                    ),
                  ],
                ),
                child: Text("?",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.grey.shade600
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
    ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
