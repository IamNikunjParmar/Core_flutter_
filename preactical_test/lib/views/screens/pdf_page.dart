import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:preactical_test/views/Globals/globals.dart';
import 'package:preactical_test/views/componets/my_back_button.dart';
import 'package:printing/printing.dart';



class PdfPage extends StatefulWidget {
  const PdfPage({Key? key}) : super(key: key);

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {



  FutureOr<Uint8List>generatePDf()async{
    pw.Document pdf = pw.Document();


    pdf.addPage(
      pw.Page(
        build: (pw.Context context)=> pw.Column(
          children: [
            pw.Text("Attendace Sheet",
            style: pw.TextStyle(
              fontSize: 25,
              fontWeight: pw.FontWeight.bold,
            ),
            ),
            pw.SizedBox(
              height: 20,
            ),
            pw.Text(
                "${Global.student1}",
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                )
            ),
            pw.SizedBox(
              height: 10
            ),
            pw.Text(
                "${Global.student2}",
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                )
            ),
            pw.SizedBox(
                height: 10
            ),
            pw.Text(
                "${Global.student3}",
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                )
            ),
            pw.SizedBox(
                height: 10
            ),
            pw.Text(
                "${Global.student4}",
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                )
            ),
            pw.SizedBox(
                height: 10
            ),
            pw.Text(
                "${Global.student5}",
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                )
            ),
            pw.SizedBox(
                height: 10
            ),
            pw.Text(
                "${Global.student6}",
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                )
            ),

          ],
        ),
      ),

    );
    return pdf.save();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: myBackButton(),
        title: const Text("PDF Page"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: PdfPreview(
        build: (format)=> generatePDf(),
      ),

    );
  }
}
