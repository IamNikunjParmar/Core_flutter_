import 'package:flutter/material.dart';
import 'package:untitled/utils/routes_utils.dart';
import 'package:untitled/views/screens/add_item.dart';
import 'package:untitled/views/screens/business_info.dart';
import 'package:untitled/views/screens/client_details.dart';
import 'package:untitled/views/screens/home_page.dart';
import 'package:untitled/views/screens/invoice_details.dart';
import 'package:untitled/views/screens/invoice_info.dart';
import 'package:untitled/views/screens/pdf_page.dart';
import 'package:untitled/views/screens/splash_screen.dart';

void main(){
  runApp(
    MyAPP(),
  );
}

class MyAPP extends StatefulWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: Myroutes.splashScreen,
      routes: {
        Myroutes.home:(context) => const HomePage(),
        Myroutes.splashScreen:(context)=>const SplashScreen(),
         Myroutes.invoicedetails:(context)=>const InvoiceDetails(),
        Myroutes.pdfPage:(context)=>const PdfPage(),
         Myroutes.buildoptions[0]['name']:(context)=>const Businessinfo(),
         Myroutes.buildoptions[1]['name']:(context)=>const InvoiceInfo(),
         Myroutes.buildoptions[2]['name']:(context)=>const ClientDetails(),
         Myroutes.buildoptions[3]['name']:(context)=>const Additems(),

      },
    );
  }
}
