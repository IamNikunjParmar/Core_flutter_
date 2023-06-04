
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
        title: Text("Map"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        backgroundColor: Colors.blue,
      ),
      body: Align(
        child: Column(
          children: [
            Align(
              child: Container(
                height: 90,
                width: 420,
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 5,top: 5),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text("Exit",
                    style: TextStyle(
                      fontSize: 20
                    ),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    Icon(Icons.exit_to_app,
                    size: 25,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              child: Container(
                height: 90,
                width: 420,
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 5,top: 5),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text("Play",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      width: 245,
                    ),
                    Icon(Icons.play_arrow,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              child: Container(
                height: 90,
                width: 420,
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 5,top: 5),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text("Pause",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      width: 225,
                    ),
                    Icon(Icons.pause,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              child: Container(
                height: 90,
                width: 420,
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 5,top: 5),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text("Stop",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      width: 240,
                    ),
                    Icon(Icons.stop,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              child: Container(
                height: 90,
                width: 420,
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 5,top: 5),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text("Close",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      width: 230,
                    ),
                    Icon(Icons.close,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              child: Container(
                height: 90,
                width: 420,
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 5,top: 5),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text("Delete",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      width: 225,
                    ),
                    Icon(Icons.delete,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              child: Container(
                height: 90,
                width: 420,
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 5,top: 5),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text("Email",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    SizedBox(
                      width: 230,
                    ),
                    Icon(Icons.email,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
