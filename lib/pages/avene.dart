import 'package:flutter/material.dart';


class Avene extends StatefulWidget {
  @override
  _AveneState createState() => _AveneState();
}

class _AveneState extends State<Avene> {
  var articleList = [{
    'name': 'Ecran minéral 50+',
    'indication': 'protection solaire',
    'typepeau': 'peau normal',
    'contenance': '50ml',
    'prix': '48,500 DT',
  },
    {
      'name': 'Eau thermale',
      'indication': 'Apaisante',
      'typepeau': 'Tout type de peau',
      'contenance': '150ml',
      'prix': '23,500 DT',
    },
    {
      'name': 'cleanance gel',
      'indication': 'Gel nettoyant',
      'typepeau': 'Peaux sensibles grasses',
      'contenance': '200ml',
      'prix': '35.000 DT',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avene'),
          centerTitle: true,
        ),
        //drawer: MyDrawer(),
        body:
        ListView.builder(
          itemCount: articleList.length,

          itemBuilder: (context, i) {
            return ArticleList(
              name: articleList[i]['name'],
              indication: articleList[i]['indication'],
              typepeau: articleList[i]['typepeau'],
              prix: articleList[i]['prix'],);
          },
        )
    );
  }
}

class ArticleList extends StatelessWidget {
  final name;

  final indication;

  final typepeau;

  final prix;

  ArticleList({this.name, this.indication, this.typepeau, this.prix });

  @override
  Widget build(BuildContext context) {
    return InkWell(child: Card(
        child: Row(children: <Widget>[
          Image.asset(
            'images/labo/avene/avecmi.jfif',
            fit: BoxFit.fill, height: 160,
          ),
          Container(child:
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Text(name, style: TextStyle(color: Colors.red, fontSize: 15),),
             Text(indication, style: TextStyle(color: Colors.blue, fontSize: 15),),
              Text( typepeau, style: TextStyle(color: Colors.blue, fontSize: 15),),
              Row(children: <Widget>[
                Text( "Prix:", style: TextStyle(color: Colors.blue, fontSize: 15),),
                Text(prix, style: TextStyle(color: Colors.pinkAccent, fontSize: 15),),
              ]),


            ]))
          //Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
        ])

    ),
      onTap: () {
        Navigator.of(context).pushNamed('detailArticl');
      },
    );
  }
}
