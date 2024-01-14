import 'package:flutter/material.dart';
import 'package:portfolio_sumit/about.dart';
import 'package:portfolio_sumit/home.dart';
import 'package:portfolio_sumit/pdf.dart';
import 'package:portfolio_sumit/project.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => Myhome(),
      'about': (context) => Myabout(),
      'project': (context) => Myproject(),
      'pdf': (context) => MYpdf(),
    },
  ));
}
