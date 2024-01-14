import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => MyhomeState();
}

class MyhomeState extends State<Myhome> {
  myAchive(num, Type) {
    return Row(
      children: [
        Text(num,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        Container(
          child: Text(
            Type,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  mySpec(icon, tech) {
    return Container(
      width: 100,
      height: 110,
      margin: EdgeInsets.only(right: 0),
      child: Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              tech,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton(
            iconColor: Colors.white,
            icon: Icon(Icons.menu),
            color: Colors.black,
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: TextButton(
                      child: Text("About Me",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.pushNamed(context, 'about');
                      },
                    ),
                    value: 1,
                  )
                ]),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: SlidingSheet(
        color: Colors.white,
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.38, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
            child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 50,
                bottom: 50,
                right: 0,
              ),
              child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/img.png',
                    height: 430,
                    fit: BoxFit.contain,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.50),
              child: Column(children: [
                Text(
                  'SUMIT KEKAN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 0,
                ),
                Text(
                  'SOFTWARE DEVELOPER',
                  style: TextStyle(color: Colors.green, fontSize: 17),
                ),
              ]),
            )
          ],
        )),
        builder: (context, state) {
          return Container(
              margin: EdgeInsets.only(left: 30, top: 30, right: 30),
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Specialized In. ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(Icons.android, 'Android'),
                          mySpec(Icons.flutter_dash_sharp, 'Flutter'),
                          mySpec(Icons.data_object_sharp, 'SQL')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(Icons.language, 'Dart'),
                          mySpec(Icons.api_outlined, 'API'),
                          mySpec(Icons.join_full_rounded, 'Java')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(Icons.graphic_eq, 'UI/UX'),
                          mySpec(Icons.data_saver_on, 'FireBase'),
                          mySpec(Icons.design_services_rounded, 'Figma')
                        ],
                      ),
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}
