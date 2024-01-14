import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MYpdf extends StatefulWidget {
  const MYpdf({super.key});

  @override
  State<MYpdf> createState() => _MYpdfState();
}

class _MYpdfState extends State<MYpdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume"),
      ),
      body: SfPdfViewer.asset('assets/personal.pdf'),
    );
  }
}
