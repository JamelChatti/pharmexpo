import 'package:flutter/material.dart';

class Avecmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: 400,
      child: Card( child:
    Container(padding: EdgeInsets.all(10),
        child:ListView(children: <Widget>[
          Image.asset(
            'images/labo/avene/avecmi.jfif',
            fit: BoxFit.fill,height: 500,
          ),
          Text('Description',style: TextStyle(color: Colors.red, fontSize: 20),),
          Text('- Protectrice solaire',style: TextStyle(color: Colors.blue, fontSize: 15),),
          Text('- Anti-oxydante',style: TextStyle(color: Colors.blue, fontSize: 15),),
          Text('- Apaisante et anti-irritante',style: TextStyle(color: Colors.blue, fontSize: 15),),
          Text('Conseil d\'utilisation',style: TextStyle(color: Colors.red, fontSize: 20),),
          Text('Avant toute exposition au soleil, appliquer uniformément sur la peau.',style: TextStyle(color: Colors.blue, fontSize: 15),),
          Text('Lutilisation de ce produit ne doit pas inciter à sexposer longtemps au soleil. Renouveler fréquemment lapplication en cas dexpositions prolongées et après chaque bain. Éviter lexposition entre 12h et 16h.',style: TextStyle(color: Colors.blue, fontSize: 15),),
          Text('Les coups de soleil dont dangereux, surtout chez lenfant.',style: TextStyle(color: Colors.blue, fontSize: 15),),
        ],)

    )),);
  }
}
