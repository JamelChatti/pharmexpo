
import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:flutter/material.dart';
import 'package:pharmexpo/pages/detailArticl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'articlelist.dart';

class Avene extends StatefulWidget {
  @override
  _AveneState createState() => _AveneState();
}

class _AveneState extends State<Avene> {
var age_pref;
  Future getData() async {
    var url = 'http://192.168.42.23/pharmexpo/index.php';
    var response = await http.get(url);
    var responseody = jsonDecode(response.body);
    return responseody;
  }
  getPref()async{
    SharedPreferences preferences =await SharedPreferences.getInstance();
    setState(() {
      age_pref = preferences.getString('age');
    });
print(age_pref);
  }
@override
void initState() {
  getPref();
 // getData();
  // TODO: implement initState
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avene'),
          centerTitle: true,
        ),
        //drawer: MyDrawer(),
        body: FutureBuilder(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, i) {
                    return ArticleList(
                      age: age_pref,
                      nom: snapshot.data[i]['nom'],
                      indication: snapshot.data[i]['indication'],
                      contr_indic: snapshot.data[i]['contr_indic'],
                      eff_indes: snapshot.data[i]['eff_indes'],
                      enceinte: snapshot.data[i]['enceinte'],
                      allaitant: snapshot.data[i]['allaitant'],
                      cat_art: snapshot.data[i]['cat_art'],
                      contenance: snapshot.data[i]['contenance'],
                      prix: snapshot.data[i]['prix'],
                      image:snapshot.data[i]['image'],
                      labo: snapshot.data[i]['labo'],
                      poso_nour: snapshot.data[i]['poso_nour'],
                      poso_ad: snapshot.data[i]['poso_ad'],
                      poso_enf: snapshot.data[i]['poso_enf'],

                    );
                  },
                );
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}

