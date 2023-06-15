import 'package:flutter/material.dart';

import '../../Utils/color_utils.dart';
import '../../Utils/product_utils.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

 int counter=0;
  @override
  Widget build(BuildContext context) {

    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        backgroundColor: Appbrcolor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Align(
                      child: CircleAvatar(
                        radius: 100,
                        foregroundImage: NetworkImage(data['thumbnail']),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: h * 0.67,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: h*0.05,
                        width: w*0.30,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    counter--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "$counter",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    counter++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Align(
                            child: Text(
                              data['title'],
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )

                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        data['description'],
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            flex:4,
                            child: Text(
                              "\₹ ${data['price']}",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  "${data['rating']}",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Expanded(
                child: GestureDetector(
                  onTap: (){
                    if (!cartItems.contains(data)) {
                      cartItems.add(data);
                    }
                  },
                  child: Container(
                    height: h*0.1,
                    width: w*1,
                    color: Colors.green,
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: debodycolor,
    );
  }
}