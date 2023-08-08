import 'package:flutter/material.dart';
import 'package:untitled1_pr_7_festival_app/utils/color_utils.dart';
import 'package:untitled1_pr_7_festival_app/utils/festival_utils.dart';
import 'package:untitled1_pr_7_festival_app/views/componets/myback_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {

    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Details page"),
        centerTitle: true,
        leading: myBackButton(),
        backgroundColor: MyappBar,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          height: h * 0.7 ,
          width: w * 0.9,
          child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              children: List.generate(25,
                      (index) => Card(
                    color: Colors.primaries[index % 18].shade600,
                    child: Text("${allFrames[index].category}"),
                  ))
          ),
        ),
      ),
    );
  }
}
