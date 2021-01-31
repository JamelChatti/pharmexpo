import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pharmexpo/Globals.dart';
import 'package:pharmexpo/pages/articlelist.dart';
import '../compount/mydrawer.dart';
import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:shared_preferences/shared_preferences.dart';

class MyHome extends StatefulWidget {

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var listsearch = [];
  var age_pref;
  Future getData() async {
    var url = 'http://192.168.42.23/pharmexpo/search.php';
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    for (int i = 0; i < responsebody.length; i++) {
      listsearch.add(responsebody[i]['nom']);
    }
    print(listsearch);
  }

   getPref()async{
     SharedPreferences preferences =await SharedPreferences.getInstance();
    age_pref = preferences.getString('age');
    print(age_pref);
    }


  @override
  void initState() {
     getPref();
    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Accueuil',
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              showSearch(
                  context: context, delegate: DataSearch(list: listsearch));
            },
          )
        ],
        elevation: 10,
        // leading: IconButton(icon: Icon Icons.search,color: Colors.white,),onPressed: () {},),
      ),
      drawer: MyDrawer(),
      body: ListView(children: <Widget>[
        Container(
          height: 200.0,
          width: 400.0,
          child: Carousel(
            // boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 10.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.blue.withOpacity(0.5),
            dotPosition: DotPosition.bottomCenter,
            dotVerticalPadding: 1.0,
            showIndicator: true,
            indicatorBgPadding: 2.0,
            dotIncreaseSize: 2,
            dotSpacing: 50,
            overlayShadow: true,
            overlayShadowColors: Colors.blue,
            images: [
              Image.asset('images/bv.jpg', fit: BoxFit.cover),
              Image.asset(
                'images/cadu.jpg',
                fit: BoxFit.fill,
              ),
              Image.asset("images/ph.jpg", fit: BoxFit.cover),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 70,
          width: 300,
          child: Text(
            'Faites votre choix',
            style: TextStyle(
                fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 400,
          child: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                    child: Image.asset(
                      'images/indication/visage.jfif',
                      fit: BoxFit.fill,
                    ),
                    footer: Container(
                      color: Colors.lightBlueAccent.withOpacity(0.3),
                      child: Text(
                        'Creme pour visage',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('avene');
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                      child: Image.asset(
                        'images/indication/rides.jfif',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.lightBlueAccent.withOpacity(0.3),
                        child: Text(
                          'Antirides',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                      child: Image.asset(
                        'images/indication/tache.jfif',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.lightBlueAccent.withOpacity(0.3),
                        child: Text(
                          'Pigmentation et tache brune',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                      child:
                          // Image.asset(
                          //   'images/ecrn.jfif', ),
                          Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg-4DboF8aUvncFRz9nwpqQRXt__7JjPJrYQ&usqp=CAU',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.lightBlueAccent.withOpacity(0.3),
                        child: Text(
                          'Ecran solaire',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                      child: Image.asset(
                        'images/indication/main.jfif',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.lightBlueAccent.withOpacity(0.3),
                        child: Text(
                          'Creme pour les mains',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                      child: Image.asset(
                        'images/indication/pied.jfif',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.lightBlueAccent.withOpacity(0.3),
                        child: Text(
                          'Creme pour les pieds',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                      child: Image.asset(
                        'images/indication/teinture.jfif',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.lightBlueAccent.withOpacity(0.3),
                        child: Text(
                          'Teinturespour cheveux',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                      child: Image.asset(
                        'images/indication/shamp.jfif',
                        // fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.lightBlueAccent.withOpacity(0.3),
                        child: Text(
                          'Les shampoings et gel douche',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                      child: Image.asset(
                        'images/indication/chutche.jfif',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.lightBlueAccent.withOpacity(0.3),
                        child: Text(
                          'Chute de cheveux',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                      child: Image.asset(
                        'images/indication/labo.png',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.lightBlueAccent.withOpacity(0.3),
                        child: Text(
                          'choisir votre gamme préferée',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                      // child: Image.asset(
                      //   'images/compl',
                      //   fit: BoxFit.fill,
                      // ),
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-sbQwSwsKn1J6uwQQR23Ez2KKUgF6tjTrow&usqp=CAU'),
                      footer: Container(
                          color: Colors.lightBlueAccent.withOpacity(1),
                          child: Column(children: <Widget>[
                            Text(
                              'Les complements alimentaires',
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'المكملات الغذائية',
                              textAlign: TextAlign.center,
                            ),
                          ]))),
                ),
              ),

              // Container(padding: EdgeInsets.all(10),
              //   height: 100,
              //   child: GridTile(
              //       child: Image.asset(
              //         'images/labo/lrp.png',
              //         fit: BoxFit.fill,
              //       ),
              //       footer:Container(
              //         color: Colors.blue,
              //         child: Text(
              //           'Naturel',
              //           textAlign: TextAlign.center,
              //         ),
              //       )
              //   ),
              // ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(
                      // child: Image.asset(
                      //   'images/images/indication/hessece.jfif',
                      //   //fit: BoxFit.fill,
                      // ),
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4QxvSlnYsyAjLELmGpyPlM8vyeH4TD8X1Ww&usqp=CAU'),
                      footer: Container(
                        color: Colors.lightBlueAccent.withOpacity(0.2),
                        child: Text(
                          'Les huiles essentielles',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class DataSearch extends SearchDelegate<String> {


  List<dynamic> list;

  DataSearch({this.list});

  Future getsearchdata() async {
    var url = 'http://192.168.42.23/pharmexpo/searchart.php';
    var data={'searcharticl' : query};
    var response = await http.post(url, body: data);
    var responsebody = jsonDecode(response.body);
      return responsebody;
    }



 // @override
  // void initState() {
  //   getPref();
  //   getsearchdata();
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override

  List<Widget> buildActions(BuildContext context) {
    //action pour l'appbar
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //icon leading
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //resultats de recherche
    return FutureBuilder(
        future:getsearchdata(),
        builder: (BuildContext context,AsyncSnapshot snapshot){
          if(snapshot.hasData){
            return ListView.builder(itemCount: snapshot.data.length,itemBuilder: (context , i ){

              return ArticleList(
                age: Globals.localStorage.getString("age"),
                nom: snapshot.data[i]['nom'],
               indication: snapshot.data[i]['indication'],
                contr_indic: snapshot.data[i]['contr_indic'],
               eff_indes: snapshot.data[i]['eff_indes'],
                enceinte: snapshot.data[i]['enceinte'],
                allaitant: snapshot.data[i]['allaitant'],
                cat_art: snapshot.data[i]['cat_art'],
                contenance: snapshot.data[i]['contenance'],
                prix: snapshot.data[i]['prix'],
                poso_nour:snapshot.data[i]['poso_nour'],
                poso_enf:snapshot.data[i]['poso_enf'],
                poso_ad:snapshot.data[i]['poso_ad'],
                image:snapshot.data[i]['image'],
                labo: snapshot.data[i]['labo'],
              );
            });
          }
          return Center(child: CircularProgressIndicator(),);
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //ce que apparait quand on est entrain de rechercher
    var searchlist =
        query.isEmpty ? list : list.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
        itemCount: searchlist.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.label),
            title: Text(searchlist[i]),
            onTap: (){
              query=searchlist[i];
              showResults(context);
            },
          );
        });
  }
}
