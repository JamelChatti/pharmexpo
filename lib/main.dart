import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmexpo/Globals.dart';
import 'package:pharmexpo/pages/categories.dart';
import 'package:pharmexpo/pages/chooseAge.dart';
import 'package:pharmexpo/pages/home.dart';
import 'package:pharmexpo/pages/avene.dart';
import 'package:pharmexpo/pages/detailArticl.dart';
import 'package:pharmexpo/pages/login.dart';
import 'package:pharmexpo/pages/loginex.dart';
import 'package:pharmexpo/pages/post.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initSharedPreferseces();
  runApp(MyApp());
}

initSharedPreferseces() async {
  await Globals.init();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //start
      title: 'PHARMEXPO',
      home: ChooseAge(),
        routes: {
        'categories':(context){
          return Categorie();
                  },
           'avene'  :(context) {
          return Avene();
           },
          'login'  :(context) {
            return Login();
          },
          'home'  :(context) {
            return MyHome();
          },
          'post'  :(context) {
            return Post();
          },

    }
    );
    }
  }

