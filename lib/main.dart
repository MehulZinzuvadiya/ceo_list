import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ceoScreen.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => CeoList(),
    },
  ));
}