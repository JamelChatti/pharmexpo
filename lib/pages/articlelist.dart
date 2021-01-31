import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:flutter/material.dart';
import 'package:pharmexpo/pages/detailArticl.dart';

class ArticleList extends StatelessWidget {
  var poso;
  final nom;
  final forme;
  final indication;
  final contr_indic;
  final contenance;
  final eff_indes;
  final enceinte;
  final allaitant;
  final mode_util;
  final cat_art;
  final prix;
  final poso_nour;
  final poso_enf;
  final poso_ad;
  final image;
  final labo;
  final age;

  ArticleList(
      {this.forme,
      this.age,
      this.allaitant,
      this.mode_util,
      this.cat_art,
      this.contr_indic,
      this.eff_indes,
      this.enceinte,
      this.nom,
      this.indication,
      this.contenance,
      this.labo,
      this.image,
      this.prix,
      this.poso_nour,
        this.poso_enf,
        this.poso_ad
      });

  @override
  Widget build(BuildContext context) {
    if(age=='Nourrisson'){
      poso=poso_nour;
    };
    if(age=='Enfant'){
      poso=poso_enf;
    };
    if(age=='Adulte'){
      poso=poso_ad;
    };
    return InkWell(
      child: Card(
          child: Row(children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          width: 150,
          child: Image.network(
            'https://firebasestorage.googleapis.com/v0/b/flutter-with-firebase-99891.appspot.com/o/'+image+'?alt=media',
            fit: BoxFit.cover,
            height: 160,
          ),
        ),
        Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Text(
                nom,
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
              Text(
                indication,
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
              Text(
                contenance,
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
              Text(
                labo,
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
              Row(children: <Widget>[
                Text(
                  "Prix:",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
                Text(
                  prix,
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 15),
                ),
              ]),
                  Row(children: <Widget>[
                    Text(
                      "Posologie:",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                    Text(
                      poso,
                      style: TextStyle(color: Colors.pinkAccent, fontSize: 15),
                    ),
                  ]),
            ]))
        //Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
      ])),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailArticl(
            contenance_d: contenance,
            nom_d: nom,
            forme_d: forme,
            indication_d: indication,
            contr_indic_d: contr_indic,
            eff_indes_d: eff_indes,
            enceinte_d: enceinte,
            allaitant_d: allaitant,
            mode_util_d: mode_util,
            cat_art_d: cat_art,
            image_d: image,
            prix_d: prix,
            poso_d: poso,
            labo_d: labo,
          );
        }));
      },
    );
  }
}
