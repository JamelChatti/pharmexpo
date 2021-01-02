import 'package:flutter/material.dart';
import 'package:pharmexpo/compount/mydrawer.dart';
// import 'package:pharmexpo/pages/avene.dart';
// import 'package:pharmexpo/pages/laboratoires.dart';

class Categorie extends StatefulWidget {
  @override
  _CategorieState createState() => _CategorieState();
}

class _CategorieState extends State<Categorie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      drawer: MyDrawer(),
      body:
      GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children:<Widget> [
         InkWell( child: Card(
            child:Column(children: <Widget>[
        Image.asset(
        'images/labo/avene.png',
        fit: BoxFit.fill,height: 160,
      ),
      Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
        ],)

          ),
           onTap: (){
          Navigator.of(context).pushNamed('avene');
           },
         ),
        ],
      )
    );
  }
}
