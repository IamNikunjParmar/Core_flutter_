import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../Globals/globals.dart';
import '../componets/my_backbutton.dart';

class Businessinfo extends StatefulWidget {
  const Businessinfo({Key? key}) : super(key: key);

  @override
  State<Businessinfo> createState() => _BusinessinfoState();
}

class _BusinessinfoState extends State<Businessinfo> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: Text("Business Info"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(31, 65, 106, 1),
        foregroundColor: Colors.white,
        elevation: 5,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.white,
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                   padding: EdgeInsets.all(12),
                    height: 120,
                    width: 440,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        const Text("Add Your Business Logo",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        ),
                        const Spacer(),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Color.fromRGBO(31, 65, 106, 1),
                              foregroundColor: Colors.white,
                              foregroundImage: Globals.image != null ? FileImage(Globals.image!) : null,
                            ),
                            FloatingActionButton.small(
                              onPressed:() {
                                ImagePicker picker = ImagePicker();
                                XFile? file;

                                showDialog(
                                  context:context,
                                  builder: (context)=> AlertDialog(
                                    title: Text("Pick Image"),
                                    content: Text("choose your Image"),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () async{
                                          file = await picker.pickImage(source: ImageSource.camera);

                                          if(file  != null)
                                          {
                                            setState(() {
                                              Globals.image = File(file!.path);
                                            });
                                          }
                                          Navigator.of(context).pop();
                                        },
                                        child:Text("Camera"),
                                      ),
                                      ElevatedButton(
                                        onPressed: () async{
                                          file = await picker.pickImage(source: ImageSource.gallery);
                                          if(file  != null)
                                          {
                                            setState(() {
                                              Globals.image = File(file!.path);
                                            });
                                          }
                                          Navigator.of(context).pop();
                                        },
                                        child:Text("Gallery"),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.add,
                                color: Color.fromRGBO(31, 65, 106, 1),
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Business Name",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (val){
                      if(val!.isEmpty)
                      {
                        return "Please Enter Name";
                      }
                      else
                      {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,

                    decoration: InputDecoration(
                        hintText: "Enter Name",
                        labelText: "Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onChanged: (val){
                      setState(() {
                        Globals.Businessname = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Owner Name",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (val){
                      if(val!.isEmpty)
                      {
                        return "Please Enter Name";
                      }
                      else
                      {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,

                    decoration: InputDecoration(
                        hintText: "Enter Name",
                        labelText: "Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onChanged: (val){
                      setState(() {
                        Globals.ownername = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Email",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (val){
                      if(val!.isEmpty)
                      {
                        return "Please Enter Email";
                      }
                      else
                      {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,

                    decoration: InputDecoration(
                        hintText: "Enter Email",
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onChanged: (val){
                      setState(() {
                        Globals.email = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Mobile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (val){
                      if(val!.isEmpty)
                      {
                        return "Please Enter Mobile Number";
                      }
                      else
                      {
                        return null;
                      }
                    },
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,

                    ],

                    decoration: InputDecoration(
                        hintText: "Enter Number",
                        labelText: "Number",
                        prefixText: "+91",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onChanged: (val){
                      setState(() {
                        Globals.number = val;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Address",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (val){
                      if(val!.isEmpty)
                      {
                        return "Please Enter Your Address";
                      }
                      else
                      {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,

                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onChanged: (val){
                      setState(() {
                        Globals.address = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {

                        bool validated = formkey.currentState!.validate();
                        setState(() {

                          if(validated)
                          {

                            formkey.currentState!.save();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text("Successfully Saved"),
                                backgroundColor: Color.fromRGBO(31, 65, 106, 1),
                                behavior: SnackBarBehavior.floating,
                                duration: Duration(
                                  seconds: 3,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                margin: EdgeInsets.all(25),
                                dismissDirection: DismissDirection.horizontal,
                                action: SnackBarAction(
                                  label: "ok",
                                  textColor: Colors.white,
                                  onPressed: (){

                                  },
                                ),
                              ),
                            );
                          }
                          else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text("Failed to Details"),
                                backgroundColor: Colors.grey.shade600,
                                behavior: SnackBarBehavior.floating,
                                duration: Duration(
                                  seconds: 3,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.all(25),
                                dismissDirection: DismissDirection.horizontal,
                                action: SnackBarAction(
                                  label: "ok",
                                  textColor: Colors.white,
                                  onPressed: (){},
                                ),
                              ),
                            );
                          }
                        });
                      },

                      style: ElevatedButton.styleFrom(primary: Color.fromRGBO(31, 65, 106, 1)),
                      child: Text("SAVE",
                        style: TextStyle(
                          color: Colors.white,
                        ),

                      ),
                    ),
                  ),





                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
