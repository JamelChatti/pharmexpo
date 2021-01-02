import 'package:flutter/material.dart';

class Avene extends StatefulWidget {
  @override
  _AveneState createState() => _AveneState();
}

class _AveneState extends State<Avene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avene'),
        centerTitle: true,
      ),
        //drawer: MyDrawer(),
        body:
        GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children:<Widget> [
            InkWell( child: Card(
                child:Column(children: <Widget>[
                  Image.asset(
                    'images/labo/avene/avcima.jfif',
                    fit: BoxFit.fill,height: 160,
                  ),
                  Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],)

            ),
              onTap: (){
               // Navigator.of(context).pushNamed('avene');
              },
            ),
            InkWell( child: Card(
                child:Column(children: <Widget>[
                  Image.asset(
                    'images/labo/avene/avclex.jfif',
                    fit: BoxFit.fill,height: 160,
                  ),
                  Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],)

            ),
              onTap: (){
                //Navigator.of(context).pushNamed('avene');
              },
            ),
            InkWell( child: Card(
                child:Column(children: <Widget>[
                  Image.asset(
                    'images/labo/avene/avclge.jfif',
                    fit: BoxFit.fill,height: 160,
                  ),
                  Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],)

            ),
              onTap: (){
                //Navigator.of(context).pushNamed('avene');
              },
            ),
            InkWell( child: Card(
                child:Column(children: <Widget>[
                  Image.asset(
                    'images/labo/avene/aveath150.jfif',
                    fit: BoxFit.fill,height: 160,
                  ),
                  Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],)

            ),
              onTap: (){
                //Navigator.of(context).pushNamed('avene');
              },
            ),
            InkWell( child: Card(
                child:Column(children: <Widget>[
                  Image.asset(
                    'images/labo/avene/avecmi.jfif',
                    fit: BoxFit.fill,height: 160,
                  ),
                  Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],)

            ),
              onTap: (){
                Navigator.of(context).pushNamed('avecmi');
              },
            ),
            InkWell( child: Card(
                child:Column(children: <Widget>[
                  Image.asset(
                    'images/labo/avene/avhyle.jfif',
                    fit: BoxFit.fill,height: 160,
                  ),
                  Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],)

            ),
              onTap: (){
                //Navigator.of(context).pushNamed('avene');
              },
            ),
            InkWell( child: Card(
                child:Column(children: <Widget>[
                  Image.asset(
                    'images/labo/avene/avhyop.jfif',
                    fit: BoxFit.fill,height: 160,
                  ),
                  Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],)

            ),
              onTap: (){
                //Navigator.of(context).pushNamed('avene');
              },
            ),
            InkWell( child: Card(
                child:Column(children: <Widget>[
                  Image.asset(
                    'images/labo/avene/avhyri.jfif',
                    fit: BoxFit.fill,height: 160,
                  ),
                  Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],)

            ),
              onTap: (){
                //Navigator.of(context).pushNamed('avene');
              },
            ),
            InkWell( child: Card(
                child:Column(children: <Widget>[
                  Image.asset(
                    'images/labo/avene/avsosu.jfif',
                    fit: BoxFit.fill,height: 160,
                  ),
                  Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],)

            ),
              onTap: (){
                //Navigator.of(context).pushNamed('avene');
              },
            ),
            InkWell( child: Card(
                child:Column(children: <Widget>[
                  Image.asset(
                    'images/labo/avene/avtrex.jfif',
                    fit: BoxFit.fill,height: 160,
                  ),
                  Text('Avene',style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],)

            ),
              onTap: (){
                //Navigator.of(context).pushNamed('avene');
              },
            ),
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
                //Navigator.of(context).pushNamed('avene');
              },
            ),
          ],
        )
    );
  }
}
