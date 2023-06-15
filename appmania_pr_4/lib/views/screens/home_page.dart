
import 'package:appmania_pr_4/Utils/product_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../Utils/color_utils.dart';
import '../../Utils/route_utils.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {

    int pro=0;
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mybg,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: Icon(
          Icons.location_on_rounded,
          color: Colors.black,
        ),
        title: Align(
          alignment: Alignment(-1.3,0),
          child: Text("Bhavnagar City",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
        actions: [
          Container(
            width: 35,
            height:35,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.menu,
            ),
          ),
        ],
      ),
      body:Padding(
        padding:  EdgeInsets.only(left: 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
         physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment(-0.65,0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Find The",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      TextSpan(
                        text: " Best\n",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "Food",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: " Around You",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(

                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: h * 0.065,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.search,
                              color: Colors.grey.shade500,
                              size: 25,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Search your favourit food",
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 14,
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment(-0.80,0),
                child:
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Find",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "  5km >",
                          style: TextStyle(
                            color: Colors.orange.shade700,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                children:[
                  Column(
                    children: allProducts
                        .map(
                            (pro) => GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  MyRoutes.detailPage,
                                  arguments: pro,
                                );
                              },
                              child: Container(
                                height: h * 0.35,
                                width: w * 0.42,
                                margin: EdgeInsets.only(left: 20,bottom: 20),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Colors.grey.shade500,
                                      offset: Offset(1,1),
                                    ),
                                  ],
                                ),
                                //padding: EdgeInsets.only(top: 1),
                                child: Column(
                                 //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: h * 0.26,
                                      width: w * 0.60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                        image: DecorationImage(
                                          image: NetworkImage(pro['thumbnail']),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Align(
                                      alignment: Alignment(-0.7,0),
                                      child: Text(pro['title'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Align(
                                      alignment: Alignment(-0.85,0),
                                      child: RatingBarIndicator(
                                        rating: double.parse(pro['rating'].toString()),
                                        itemCount: 5,
                                        itemSize: 12,
                                        direction: Axis.horizontal,
                                        itemBuilder: (context, index) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Stack(
                                      children: [Align(
                                        alignment: Alignment(-0.80,0),
                                        child: Text("₹ ${pro['price']}".toString(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),
                                        ),
                                      ),
                                        Align(
                                          alignment: Alignment(1,0),
                                          child: Container(
                                            height: h * 0.0345,
                                            width: w * 0.12,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              ),
                                            ),
                                            child: Icon(Icons.add,color: Colors.white),
                                          ),
                                        ),
                                      ],

                                    ),

                                  ],
                                ),
                              ),
                            ),
                    ).toList(),

                  ),
                  Column(
                    children: allProducts2
                        .map(
                            (pro) => GestureDetector(
                           onTap: () {
                               Navigator.of(context).pushNamed(
                                MyRoutes.detailPage,
                                 arguments: pro,
                               );
                               },
                              child: Container(
                                height: h * 0.35,
                                width: w * 0.42,
                                margin: EdgeInsets.only(left: 20,bottom: 20),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Colors.grey.shade500,
                                      offset: Offset(1,1),
                                    ),
                                  ],
                                ),
                                //padding: EdgeInsets.only(top: 1),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: h * 0.26,
                                      width: w * 0.60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                        image: DecorationImage(
                                          image: NetworkImage(pro['thumbnail']),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Align(
                                      alignment: Alignment(-0.7,0),
                                      child: Text(pro['title'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Align(
                                      alignment: Alignment(-0.85,0),
                                      child: RatingBarIndicator(
                                        rating: double.parse(pro['rating'].toString()),
                                        itemCount: 5,
                                        itemSize: 12,
                                        direction: Axis.horizontal,
                                        itemBuilder: (context, index) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Stack(
                                      children: [Align(
                                        alignment: Alignment(-0.80,0),
                                        child: Text("₹ ${pro['price']}".toString(),
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                        Align(
                                          alignment: Alignment(1,0),
                                          child: Container(
                                            height: h * 0.0345,
                                            width: w * 0.12,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                                                bottomRight: Radius.circular(20),
                                              ),
                                            ),
                                            child: Icon(Icons.add,color: Colors.white),
                                          ),
                                        ),
                                      ],

                                    ),

                                  ],
                                ),
                              ),
                            ),
                    ).toList(),




                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
