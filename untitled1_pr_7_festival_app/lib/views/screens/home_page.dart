import 'package:flutter/material.dart';
import 'package:untitled1_pr_7_festival_app/utils/color_utils.dart';
import 'package:untitled1_pr_7_festival_app/utils/festival_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  String?  selectedCategory ;

  @override
  Widget build(BuildContext context) {


    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;


    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.home,
        size: 30,
        ),
        centerTitle: true,
        backgroundColor: MyappBar,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: h * 0.05,
                  width: w * 0.9,
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("All Festival",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: MyappBar,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: allCategories
                    .map((e)
                =>
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.of(context).pushNamed(MyRoutes.DetailsPage);
                          selectedCategory = e;
                        });
                      },
                      child: Container(
                        height: h * 0.09,
                        width: w * 0.6,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                         // color: selectedCategory == e ? MyColor.themeColor: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                          color: MyappBar,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              blurRadius: 5,
                              offset: Offset(4,4),

                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text(
                          e,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),
                      ),
                    ),
                ).toList(),
              ),



            ],
          ),
        ),

      ),
    );
  }
}
