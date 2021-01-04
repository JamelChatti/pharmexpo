import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmexpo/pages/categories.dart';
import 'package:pharmexpo/pages/home.dart';
import 'package:pharmexpo/pages/avene.dart';
import 'package:pharmexpo/pages/detailArticl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //start
      title: 'PHARMEXPO',
      home: MyHome(),
        routes: {
        'categories':(context){
          return Categorie();
                  },
           'avene'  :(context) {
          return Avene();
           },
          'detailArticl'  :(context) {
            return DetailArticl();
          },
    }
    );
    }
  }

