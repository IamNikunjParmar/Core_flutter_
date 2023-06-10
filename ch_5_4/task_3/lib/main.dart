

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
      alignment: Alignment.center,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                            color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.add,
                        size: 35,
                      color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.account_circle_rounded,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.access_alarms_rounded,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.access_alarms_rounded,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                            color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.accessibility_new,
                        size: 35,
                      color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.accessible_forward_outlined,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.ac_unit,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.account_balance_sharp,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                            color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.account_balance_wallet,
                        size: 35,
                      color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.cabin,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.dangerous_sharp,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.table_chart_sharp,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                            color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.east_rounded,
                        size: 35,
                      color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.group_remove,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.hardware,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.nature,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                            color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.verified_rounded,
                        size: 35,
                      color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.sanitizer,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.adb_outlined,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.mail,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                            color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.hdr_plus_rounded,
                        size: 35,
                      color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.offline_bolt,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.join_left_sharp,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:Colors.grey.shade400,
                          offset: Offset(0,10),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Icon(Icons.warning,
                        size: 35,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
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
