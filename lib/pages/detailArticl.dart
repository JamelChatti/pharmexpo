import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailArticl extends StatefulWidget {
  final nom_d;
  final forme_d;
  final indication_d;
  final contr_indic_d;
  final contenance_d;
  final eff_indes_d;
  final enceinte_d;
  final allaitant_d;
  final mode_util_d;
  final cat_art_d;
  final prix_d;
  final image_d;
  final labo_d;
  final poso_d;
  DetailArticl({this.forme_d,this.poso_d,
    this.allaitant_d,this.mode_util_d,this.cat_art_d,this.contr_indic_d,this.eff_indes_d,this.enceinte_d,this.nom_d, this.indication_d, this.contenance_d,this.labo_d,this.image_d, this.prix_d});
  String _selectedLocation = 'Please choose a location';


  @override
  _DetailArticlState createState() => _DetailArticlState();
}

class _DetailArticlState extends State<DetailArticl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Description' + 'التفاصيل'),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 350,
              child: GridTile(

                child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/flutter-with-firebase-99891.appspot.com/o/'+widget.image_d+'?alt=media',
                fit: BoxFit.fill,
                height: 160,
                ),
                footer: Container(
                    height: 40,
                    color: Colors.black.withOpacity(0.3),
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              widget.nom_d,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Prix: ',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                widget.prix_d,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                ' dt',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Caratéristiques' + 'الخصائص',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            //debut colonne caratcteristique

            Container(
              padding: EdgeInsets.all(10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [

                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    color: Colors.blue,
                    child: RichText(text: TextSpan(children: <TextSpan>[
                      TextSpan(text: 'Designation: ', style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 17,
                      )),
                      TextSpan(text:widget.nom_d, style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 17,
                      ) )
                    ])),
                  ),

                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   padding: EdgeInsets.all(10),
                  //   color: Colors.blue,
                  //   child: RichText(text: TextSpan(children: <TextSpan>[
                  //     TextSpan(text: 'Prix:', style: TextStyle(
                  //       decoration: TextDecoration.underline,
                  //       fontSize: 15,
                  //     )),
                  //     TextSpan(text:' 48500 dt', style: TextStyle(
                  //       decoration: TextDecoration.underline,
                  //       fontSize: 15,
                  //     ) )
                  //   ])),
                  // ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child:Column(
                      children: <Widget>[
                        mySpec(context, 'Indication:',widget.indication_d,Colors.white,Colors.blue),
                        mySpec(context, 'Contre indication:', widget.contr_indic_d,Colors.blue,Colors.white),
                        mySpec(context, 'Contenance',widget.contenance_d,Colors.white,Colors.blue),
                        mySpec(context, 'Posologie:', widget.poso_d,Colors.blue,Colors.white),
                        mySpec(context, 'Mode d\'utilisation:',widget.mode_util_d,Colors.white,Colors.blue),
                        mySpec(context, 'Femme enceinte:', widget.enceinte_d,Colors.blue,Colors.white),
                        mySpec(context, 'Femme allaitante:',widget.allaitant_d,Colors.white,Colors.blue),
                        mySpec(context, 'Categorie:',widget.cat_art_d,Colors.blue,Colors.white),
                        mySpec(context, 'Forme:',widget.forme_d,Colors.white,Colors.blue),
                        mySpec(context, 'Laboratoire', widget.labo_d,Colors.blue,Colors.white),

                        // mySpec(context, 'Contre indication', 'null',Colors.blue,Colors.white),
                        // mySpec(context, 'Indication','ecran',Colors.white,Colors.blue),
                        // mySpec(context, 'Contre indication', 'null',Colors.blue,Colors.white),
                      ],
                    )
                    ,),
                ],)
              //fin colonne caratcteristique
              ,),
          ],
        ));
  }
}
mySpec(context,String feature,String detail, Color colorbackground, Color colortext){
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(10),
    color: colorbackground,
    child: RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 19 ,color: Colors.black),
        children: <TextSpan>[
          TextSpan(text: feature),
          TextSpan(
            text: detail,
            style:TextStyle(color: colortext))
        ]
      ),
    )
  );
}