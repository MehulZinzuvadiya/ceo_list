import 'dart:html';

import 'package:flutter/material.dart';

class CeoList extends StatefulWidget {
  const CeoList({Key? key}) : super(key: key);

  @override
  State<CeoList> createState() => _CeoListState();
}

class _CeoListState extends State<CeoList> {
  Color c1 = Color(0xffC0F0FA);
  Color c2 = Color(0xff175375);
  Color c3 = Color(0xff2EA9EC);
  Color c4 = Color(0xffA029DD);
  Color c5 = Color(0xffBF9DF1);

  List name = [
    "Sundar Pichai",
    "Bill Gates",
    "Jeff Bezos",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayen",
    "Daniel Zhang",
    "Harald Kruger",
    "Michael Dell",
    "Bob Swan"
  ];
  List company = [
    "GOOGLE",
    "MICROSOFT",
    "AMAZONE",
    'RELIANCE LTD',
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];
  List images = [
    "assets/images/sundar.jpg",
    "assets/images/bill.jpg",
    "assets/images/jeff.jpg",
    "assets/images/mukesh-ambani.jpg",
    "assets/images/tim.jpg",
    "assets/images/narayen.jpg",
    "assets/images/Daniel.jpg",
    "assets/images/harald.jpg",
    "assets/images/michael.jpg",
    "assets/images/bob.jpg",
  ];
  List mycolor = [
    Color(0xff175375),
    Color(0xff2EA9EC),
    Color(0xff175375),
    Color(0xff2EA9EC),
    Color(0xff175375),
    Color(0xff2EA9EC),
    Color(0xff175375),
    Color(0xff2EA9EC),
    Color(0xff175375),
    Color(0xff2EA9EC),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "CEO of MNC's",
              style: TextStyle(fontSize: 18, color: c2),
            ),
            elevation: 0,
            centerTitle: true,
            backgroundColor: c1,
          ),
          body: Stack(
            children: [
              Container(
                  //     decoration: BoxDecoration(
                  //         gradient: LinearGradient(
                  //   transform: GradientRotation(8),
                  //   colors: [
                  //     Colors.blue,
                  //     Colors.indigo,
                  //     Colors.purple,
                  //   ],
                  // ))
                  ),
              ListView.builder(
                itemCount: name.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CeoWidget(images[index], name[index], company[index],
                      mycolor[index]);
                },
              )
            ],
          )),
    );
  }

  Widget CeoWidget(String img, String n1, String com, Color cl1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage("$img"),
        ),
        title: Text(n1),
        subtitle: Text(com),
        tileColor: cl1,
        contentPadding: EdgeInsets.all(5),
        trailing: Icon(Icons.arrow_circle_right),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
