import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Myabout extends StatefulWidget {
  const Myabout({super.key});

  @override
  State<Myabout> createState() => _MyaboutState();
}

mySpec(icon, tech) {}

class _MyaboutState extends State<Myabout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
            iconColor: Colors.white,
            icon: Icon(Icons.menu),
            color: Colors.black,
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: TextButton(
                      child: Text(
                        "Projects",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'project');
                      },
                    ),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: TextButton(
                      child:
                          Text("home", style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.pushNamed(context, 'home');
                      },
                    ),
                    value: 1,
                  )
                ]),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 40,
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
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.60),
            child: Column(children: [
              Text('Hello I AM ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'SUMIT KEKAN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'SOFTWARE DEVELOPER',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 120,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'pdf');
                  },
                  child: Text('View Resume'),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white, primary: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        const Link =
                            'https://www.instagram.com/invites/contact/?i=o3h7jr70pzrz&utm_content=7wi9jt4';
                        launchUrl(Uri.parse(Link),
                            mode: LaunchMode.externalApplication);
                      },
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        const Link =
                            'https://www.linkedin.com/in/sumit-kekan-b3728924b/';
                        launchUrl(Uri.parse(Link),
                            mode: LaunchMode.externalApplication);
                      },
                      icon: Icon(
                        FontAwesomeIcons.linkedinIn,
                        color: Colors.white,
                      )),
                ],
              )
            ]),
          ),
        ],
      )),
    );
  }
}
