import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myproject extends StatefulWidget {
  const Myproject({super.key});

  @override
  State<Myproject> createState() => _MyprojectState();
}

class _MyprojectState extends State<Myproject> {
  mypro(title, pname, dis1, dis2, dis3) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff252525),
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(pname, style: TextStyle(color: Colors.green, fontSize: 30)),
              SizedBox(
                height: 20,
              ),
              Text(
                dis1,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Text(
                dis2,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Text(
                dis3,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text("Projects"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          backgroundColor: Color(0xff252525)),
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            mypro("Flutter", "Ring APP", "Useful For Hospital",
                "Detect Patient Health", "Detect Patient Heart Rate"),
            mypro(
                "Flutter",
                "Shopping App",
                "Select iteam From Store And Add To Cart",
                "Total AMount OF Cart",
                "Grossary Store"),
            mypro("Flutter", "Login/Signup Page", "UI/UX", "Desing Using Figma",
                ""),
            mypro("Flutter", "Portfolio", "About Me", "My Resume", "My Skills")
          ],
        ),
      )),
    );
  }
}
