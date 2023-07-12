
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pr_5_timer/utils/image_utils.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//analog timer
  int sec =0;
  int min =0;
  int hour =0;
//reverse timer
  int sec1 =0;
  int min1 =0;
  int hour1 =0;

  int live_sec =0;
  int live_min =0;
  int live_hour =0;

  bool timer = false;
  bool straps = false;
  bool analog = false;
  bool digital = false;
  bool reverse = false;

  bool isrunning = false;

  List<dynamic> FlagList=[];
  List<dynamic> FlagList1=[];

  startTime(){
    if(isrunning){
      Future.delayed(Duration(seconds: 1),
              (){
            setState(() {
              sec++;
              if(sec>59)
              {
                sec=0;
                min++;
              }
              if(min>59)
              {
                min=0;
                hour++;
              }
            });
            debugPrint("second : $sec");
            startTime();
          }
      );
    }
  }

  reversetimer(){
    if(isrunning)
    {
      Future.delayed(Duration(seconds: 1),
              (){
            setState(() {
              sec1--;
              if(sec1<1)
              {
                sec1=60;
                min1--;
              }
              if(min1<1)
              {
                min1=60;
                hour1--;
              }
            });
            debugPrint("second : $sec1");
            reversetimer();
          }
      );
    }
  }

  StartLiveTime()
  {
    Future.delayed(
        const Duration(seconds: 1),
            (){
          setState(() {
            live_sec = DateTime.now().second;
            live_min = DateTime.now().minute;
            live_hour = DateTime.now().hour%12;
          });
          StartLiveTime();
        }
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StartLiveTime();
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Clock App"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage(f1),
              ),
              accountName: Text("3219_NIKUNJ_PARMAR"),
              accountEmail: Text("nikunjparmar5066@gmail.com"),
            ),


            ListTile(
              title: Text("Analog Timer"),
              trailing: Switch(
                value: timer,
                onChanged: (val) {
                  setState(() {
                    straps=false;
                    analog=false;
                    digital=false;
                    reverse=false;
                    timer = val;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Reverse Timer"),
              trailing: Switch(
                value: reverse,
                onChanged: (val) {
                  setState(() {
                    straps=false;
                    analog=false;
                    digital=false;
                    timer=false;
                    reverse = val;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Straps"),
              trailing: Switch(
                value: straps,
                onChanged: (val) {
                  setState(() {
                    timer=false;
                    reverse=false;
                    straps = val;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Analog Live"),
              trailing: Switch(
                value: analog,
                onChanged: (val) {
                  setState(() {
                    reverse=false;
                    timer=false;
                    analog = val;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Digital"),
              trailing: Switch(
                value: digital,
                onChanged: (val) {
                  setState(() {
                    analog=false;
                    timer=false;
                    reverse=false;
                    digital = val;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            //digital watch
            Visibility(
              visible: digital,
              child: Container(
                height: 40,
                width: 110,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      color: Colors.indigoAccent,
                      spreadRadius: 2,
                    ),
                  ],

                ),
                child: Center(
                  child: Text(
                    "${live_hour%12}: ${live_min} : $live_sec",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            //analog watch
            Visibility(
              visible:analog,
              child: Stack(
                children: List.generate(60, (index) => Transform.rotate(
                  angle: ((index)*(pi*2))/60,
                  child: Divider(
                    thickness: (index%5==0) ? 5 : 3,
                    color: (index%5==0) ? Colors.indigo : Colors.white,
                    endIndent: (index%5==0) ? w*0.83 : w*0.87,
                    indent: 45,
                  ),
                ),
                ),
              ),
            ),
            Visibility(
              visible: analog,
              child: Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: live_sec*(pi*2)/60,
                  child: Divider(
                    color: (live_sec%5==0) ? Colors.black : Colors.black,
                    thickness: 5,
                    indent: (live_sec%5==0) ? 50 : 45,
                    endIndent: (live_sec%60==0) ? w/2 :  w/1.22,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: analog,
              child: Transform.rotate(
                angle: pi/2,
                child: Transform.rotate(
                  angle: live_min*(pi*2)/60,
                  child: Divider(
                    color: Colors.indigoAccent,
                    thickness: 6,
                    indent: 92,
                    endIndent: w/2,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: analog,
              child: Transform.rotate(
                angle: live_hour*pi/6+pi/2,
                child: Divider(
                  color: Colors.indigoAccent,
                  thickness: 5,
                  indent: 128,
                  endIndent: w/2,
                ),
              ),
            ),
            Visibility(
              visible: analog,
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Colors.indigoAccent,
              ),
            ),
            Visibility(
                visible: analog,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.indigoAccent,
                          blurRadius: 18,
                          spreadRadius: 4,
                          blurStyle: BlurStyle.outer
                      ),
                    ],
                  ),
                )
            ),
            //Timer watch
            Visibility(
              visible: timer,
              child: Align(
                alignment: Alignment(0, -0.5),
                child: Stack(
                  children: List.generate(60, (index) => Transform.rotate(
                    angle: ((index)*(pi*2))/60,
                    child: Divider(
                      thickness: (index%5==0) ? 3 : 2,
                      color: (index%5==0) ? Colors.indigoAccent : Colors.white,
                      endIndent: (index%5==0) ? w*0.79 : w*0.82,
                      indent: 90,
                    ),
                  ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: timer,
              child: Align(
                alignment: Alignment(0, -0.5),
                child: Text(
                  " ${hour.toString().padLeft(2,"0")} : ${min.toString().padLeft(2,"0")} : ${sec.toString().padLeft(2,"0")}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Visibility(
                visible: timer,
                child: Align(
                  alignment: Alignment(0, -0.67),
                  child: Container(
                    height: 210,
                    width: 210,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          color: Colors.indigoAccent,
                        )
                      ],
                      border: Border.all(color: Colors.indigoAccent),

                    ),
                  ),
                )
            ),
            Visibility(
              visible: timer,
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  height: 400,
                  width: w,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: FlagList.map((e) =>
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 400,
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.indigoAccent,
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "$e",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        letterSpacing: 4,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ).toList(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            //reverce timer
            Visibility(
              visible: reverse,
              child: Align(
                alignment: Alignment(0, -0.5),
                child: Stack(
                  children: List.generate(60, (index) => Transform.rotate(
                    angle: ((index)*(pi*2))/60,
                    child: Divider(
                      thickness: (index%5==0) ? 3 : 2,
                      color: (index%5==0) ? Colors.indigoAccent : Colors.white,
                      endIndent: (index%5==0) ? w*0.79 : w*0.82,
                      indent: 90,
                    ),
                  ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: reverse,
              child: Align(
                alignment: Alignment(0, -0.5),
                child: Text(
                  " ${hour1%12} : ${min1.toString().padLeft(2,"0")} : ${sec1.toString().padLeft(2,"0")}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Visibility(
                visible: reverse,
                child: Align(
                  alignment: Alignment(0, -0.67),
                  child: Container(
                    height: 210,
                    width: 210,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 2,
                          blurStyle: BlurStyle.outer,
                          color: Colors.indigoAccent,
                        )
                      ],
                      border: Border.all(color: Colors.indigoAccent),

                    ),
                  ),
                )
            ),
            Visibility(
              visible: reverse,
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  height: 400,
                  width: w,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: FlagList1.map((e) =>
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 400,
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.indigoAccent,
                                    blurRadius: 10,
                                    spreadRadius: 1,

                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "$e",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        letterSpacing: 4,
                                      color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ).toList(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            //straps watch
            Visibility(
                visible: straps,
                child: Transform.scale(
                  scale: 7,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.indigoAccent,
                    value: live_sec/60,
                  ),
                )
            ),
            Visibility(
                visible: straps,
                child: Transform.scale(
                  scale: 5,
                  child: CircularProgressIndicator(
                    strokeWidth: 4,
                    color: Colors.white,
                    value: live_min/60,
                  ),
                )
            ),
            Visibility(
                visible: straps,
                child: Transform.scale(
                  scale: 3,
                  child: CircularProgressIndicator(
                    color: Colors.indigoAccent,
                    strokeWidth: 7,
                    value: live_hour/12,
                  ),
                )
            ),
            Visibility(
                visible: straps,
                child: Container(
                  height: 250,
                  width: 270,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer,
                        color: Colors.indigoAccent,
                      )
                    ],
                    border: Border.all(color: Colors.indigoAccent),
                  ),
                )
            ),
            Visibility(
                visible: straps,
                child: Container(
                  height: 210,
                  width: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer,
                        color: Colors.white,
                      )
                    ],
                    border: Border.all(color: Colors.white),
                  ),
                )
            ),
            Visibility(
                visible: straps,
                child: Container(
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer,
                        color: Colors.indigoAccent,
                      )
                    ],
                    border: Border.all(color: Colors.black),

                  ),
                )
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: timer,
            child: FloatingActionButton(
              onPressed: (){
                if(!isrunning)
                {
                  isrunning = true;
                  startTime();
                }
              },
              backgroundColor: Colors.white,


              child: Icon(
                  Icons.not_started,
                color: Colors.indigoAccent,

              ),
            ),
          ),
          SizedBox(width: 10,),
          Visibility(
            visible: timer,
            child: FloatingActionButton(
              onPressed: (){
                if(isrunning)
                {
                  FlagList.add("${hour%12} : ${min.toString().padLeft(2,"0")} : ${sec.toString().padLeft(2,"0")}");
                }
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.flag,
                 color: Colors.indigoAccent,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Visibility(
            visible: reverse,
            child: FloatingActionButton(
              onPressed: (){
                if(isrunning)
                {
                  FlagList1.add("${hour1%12} : ${min1.toString().padLeft(2,"0")} : ${sec1.toString().padLeft(2,"0")}");
                }
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.flag,
                color: Colors.indigoAccent,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Visibility(
            visible: timer,
            child: FloatingActionButton(
              onPressed: (){
                setState(() {
                  isrunning = false;
                });
              },
              backgroundColor: Colors.white,
              child: Icon(
                  Icons.stop,
                color: Colors.indigoAccent,
              ),
            ),
          ),
          Visibility(
            visible: reverse,
            child: FloatingActionButton(
              onPressed: (){
                if(!isrunning)
                {
                  isrunning = true;
                  reversetimer();
                }
              },
              backgroundColor: Colors.white,
              child: Icon(
                  Icons.not_started,
                color: Colors.indigoAccent,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Visibility(
            visible: reverse,
            child: FloatingActionButton(
              onPressed: (){
                setState(() {
                  isrunning = false;
                });
              },
              backgroundColor: Colors.white,
              child: Icon(
                  Icons.stop,
                color: Colors.indigoAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}