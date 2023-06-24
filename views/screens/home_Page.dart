import 'package:flutter/material.dart';
import 'package:funitureapp/utils/product_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text("Discover",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.perm_contact_cal_rounded),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: h * 0.25,
                  width: w * 0.8,
                  decoration: BoxDecoration(
                    //color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcn8NkLR7YcR9t8IKdWkL6CzPqY3eTV-cAzg&usqp=CAU"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
              width: 25,
            ),
            Row(
              children: [
                Text("Seats",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 25,
                  width: 25,
                ),
                Text("Seats",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25,
                  width: 25,
                ),
                Text("lamps",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 25,
                  width: 25,
                ),
                Text("Sofas",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 25,
                  width: 25,
                ),
                Text("Tables",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
              width: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: allproducts
                    .map(
                        (pro) =>  Container(
                          height: h * 0.3,
                          width: w * 0.4,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                  child:Container(
                                    height: h * 0.3,
                                    width: w * 0.4,
                                    decoration: BoxDecoration(
                                     // color: Colors.green,
                                      image: DecorationImage(
                                        image: NetworkImage(pro["thumbnail"]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                              ),
                              Expanded(
                                child:Container(
                                  height: h * 0.3,
                                  width: w * 0.4,
                                  decoration: BoxDecoration(
                                   // color: Colors.red,
                                  ),
                                  margin: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(pro["title"],style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(" ${pro['price']}".toString(),style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      )),
                                    ],
                                  ),
                                ),

                              ),
                            ],
                          ),

                        ),
                ).toList(),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
