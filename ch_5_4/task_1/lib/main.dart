
import 'package:flutter/material.dart';

void main() {
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


int counter=0;
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.lightBlue,
      title: Text("Calc"),
      centerTitle: true,
      leading: Icon(Icons.menu),
    ),
    body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.all(50),
                  child: Text("$counter",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  )
                  ),
                  alignment: Alignment.center,
                ),
              ]
          ),
          Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                    counter-=2;
                    print("$counter");
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text("-2",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        counter+=2;
                        print("$counter");
                      });
                    },
                 child: Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("+2",style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )
                  ),
                  alignment: Alignment.center,
                ),
                ),
              ]
          ),
          Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        counter-=4;
                        print("$counter");
                      });
                    },

                    child: Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("-4",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                  ),
                  alignment: Alignment.center,
                ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        counter+=4;
                        print("$counter");
                      });
                    },
                child: Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("+4",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                  ),
                  alignment: Alignment.center,
                ),
                ),
              ]
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        counter=0;
                        print("$counter");
                      });
                    },
                child: Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("Clear",style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )
                  ),
                  alignment: Alignment.center,
                ),
                ),
              ]
          ),
        ],
      ),
    ),
  );
}
}