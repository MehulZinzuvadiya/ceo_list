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
    "ADOBE"
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
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.indigo,
              Colors.purple,
            ],
          )),
          child: Column(
            children: [
              ListTile(
                title: Text(""),
              )
            ],
          )),
    ));
  }

  Widget CeoWidget() {
    return ListTile();
  }
}
