import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Globals/globals.dart';

class ClientDetails extends StatefulWidget {
  const ClientDetails({Key? key}) : super(key: key);

  @override
  State<ClientDetails> createState() => _ClientDetailsState();
}

class _ClientDetailsState extends State<ClientDetails> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Client Details"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(31, 65, 106, 1),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Client Name",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(31, 65, 106, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(

                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Name ",
                      labelText:  "Enter Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (val) {

                      if(val!.isEmpty)
                      {
                        return "Please Enter Name";
                      }
                      else
                      {
                        return null ;
                      }


                    },
                    onChanged: (val){
                      setState(() {
                        Globals.clientname = val ;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Email",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(31, 65, 106, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,


                    decoration: InputDecoration(
                      hintText: " Email Address",
                      labelText:  "Enter Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (val) {

                      if(val!.isEmpty)
                      {
                        return "Please Enter Email";
                      }
                      else
                      {
                        return null ;
                      }


                    },
                    onChanged: (val){
                      setState(() {
                        Globals.clientemail = val ;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const Text("Mobile",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(31, 65, 106, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,

                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    maxLength: 10,
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      labelText:  "Enter NUmber",
                      prefixText: "+91",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (val) {

                      if(val!.isEmpty)
                      {
                        return "Please Enter Number";
                      }
                      else
                      {
                        return null ;
                      }


                    },
                    onChanged: (val){
                      setState(() {
                        Globals.clientnumber = val ;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Fax Number",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(31, 65, 106, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: "Fax Number",
                      labelText:  "Enter Fax NUmber",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (val) {

                      if(val!.isEmpty)
                      {
                        return "Please Enter Fax Number";
                      }
                      else
                      {
                        return null ;
                      }


                    },
                    onChanged: (val){
                      setState(() {
                        Globals.clientFax = val ;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Address",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(31, 65, 106, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: "Address",
                      labelText:  "Enter Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (val) {

                      if(val!.isEmpty)
                      {
                        return "Please Enter Address";
                      }
                      else
                      {
                        return null ;
                      }


                    },
                    onChanged: (val){
                      setState(() {
                        Globals.clientaddres= val ;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
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
                                backgroundColor: Colors.green,
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
                                  label: "OK",
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
                                backgroundColor: Colors.red,
                                behavior: SnackBarBehavior.floating,
                                duration: Duration(
                                  seconds: 5,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
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
                      child: Text("Submit",
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
