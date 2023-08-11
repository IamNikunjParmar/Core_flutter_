import 'package:flutter/material.dart';
import 'package:preactical_test/Utils/prod_utils.dart';
import 'package:preactical_test/views/Globals/globals.dart';
import 'package:preactical_test/views/componets/my_back_button.dart';

class AttendaceList extends StatefulWidget {
  const AttendaceList({super.key});

  @override
  State<AttendaceList> createState() => _AttendaceListState();
}

class _AttendaceListState extends State<AttendaceList> {

  bool? checked = false;
  bool? checked1 = false;
  bool? checked2 = false;
  bool? checked4 = false;
  bool? checked5 = false;
  bool? checked6 = false;


  GlobalKey<FormState> formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendace Sheet"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(218, 24, 94,1),
        foregroundColor: Colors.white,
        elevation: 5,
        leading: myBackButton(),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed(MyRoutes.pdfpage);
          },
            icon: Icon(Icons.picture_as_pdf_outlined),),
        ],

      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
             CheckboxListTile(
              title: TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,

                onChanged: (val) {
                  setState(() {
                    Global.student1= val;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Students name",
                ),
               ),
                value: checked,
               onChanged: (val) {
              checked = val;
              Global.student1 = val as String?;
         },
               activeColor: Color.fromRGBO(218, 24, 94, 1),
             ),
              CheckboxListTile(
                value: checked1,
                onChanged: (val) {
                  checked1 = val;
                  Global.student2 = val as String?;
                },
                title: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,

                  onChanged: (val) {
                    setState(() {
                      Global.student2= val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Students name",
                  ),
                ),

                activeColor: Color.fromRGBO(218, 24, 94, 1),
              ),
              CheckboxListTile(
                title: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,

                  onChanged: (val) {
                    setState(() {
                      Global.student3= val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Students name",
                  ),
                ),
                value: checked2,
                onChanged: (val) {
                  checked2 = val;
                  Global.student3 = val as String?;
                },
                activeColor: Color.fromRGBO(218, 24, 94, 1),
              ),
              CheckboxListTile(
                title: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,

                  onChanged: (val) {
                    setState(() {
                      Global.student4= val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Students name",
                  ),
                ),
                value: checked4,
                onChanged: (val) {
                  checked4 = val;
                  Global.student4 = val as String?;
                },
                activeColor: Color.fromRGBO(218, 24, 94, 1),
              ),
              CheckboxListTile(
                title: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,

                  onChanged: (val) {
                    setState(() {
                      Global.student5= val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Students name",
                  ),
                ),
                value: checked5,
                onChanged: (val) {
                  checked5 = val;
                  Global.student5 = val as String?;
                },
                activeColor: Color.fromRGBO(218, 24, 94, 1),
              ),
              CheckboxListTile(
                title: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,

                  onChanged: (val) {
                    setState(() {
                      Global.student6= val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Students name",
                  ),
                ),
                value: checked6,
                onChanged: (val) {
                  checked6 = val;
                  Global.student6 = val as String?;
                },
                activeColor: Color.fromRGBO(218, 24, 94, 1),
              ),

              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  bool validated = formkey.currentState!.validate();
                  setState(() {
                    if(validated)
                    {
                      formkey.currentState!.save();
                    }
                  });
                },

                style: ElevatedButton.styleFrom(primary: Color.fromRGBO(218, 24, 94, 1)),
                child: Text("Submit",
                  style: TextStyle(
                    color: Colors.white,
                  ),

                ),
              ),





            ],
          ),
        )
      ),
    );
  }
}
