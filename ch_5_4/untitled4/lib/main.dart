
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

  int counter = 0;

  void increase(){
    setState(() {
      counter++;
    });
  }
  void decrease(){
    setState(() {
      counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400,
        title: Text("Dynamic List"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:List.generate(counter, (index) => Container(
              margin: EdgeInsets.all(8),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.primaries[
                  index % 2 + 3
                ].shade600,
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Text(
                "${index+1}",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                ),
              ),
            ),
            ),
          ),
        ),
      ),
      floatingActionButton: Row(

        mainAxisSize: MainAxisSize.min,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: increase,
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: decrease,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
