import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailArticl extends StatefulWidget {
  @override
  _DetailArticlState createState() => _DetailArticlState();
}

class _DetailArticlState extends State<DetailArticl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Les details de l\'article'),
        centerTitle: true,
      ),
      body: Container(
        height: 800,
        width: 400,
        child: Card(
            child: Container(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 400,
                      child: GridTile(
                        child: Image.asset(
                          'images/labo/avene/avecmi.jfif',
                          fit: BoxFit.fill,
                        ),
                        footer: Container(
                          color: Colors.black87.withOpacity(0.7),
                          alignment: Alignment.center,
                          height: 45,
                          child: Text(
                            'Avene creme minerale SPF 50+',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Prix : 48.500 DT',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Colors.yellow.shade100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                          Text(
                            '- Protectrice solaire',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                          Text(
                            '- Anti-oxydante',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                          Text(
                            '- Apaisante et anti-irritante',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                SizedBox(
                  height: 15,),
                    Text(
                      'Conseil d\'utilisation',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(5),
                      color: Colors.yellow.shade100,
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[

                          TextSpan(
                            text:
                                'Avant toute exposition au soleil, appliquer uniformément sur la peau.Lutilisation de ce produit ne doit pas inciter à sexposer longtemps au soleil. Renouveler fréquemment l\'application en cas dexpositions prolongées et après chaque bain. Éviter lexposition entre 12h et 16h.Les coups de soleil dont dangereux, surtout chez lenfant.',
                            style: TextStyle(color: Colors.blue, fontSize:20,fontWeight: FontWeight.w600),
                          )
                        ]),
                      ),
                    ),


                  ],
                ))),
      ),
    );
  }
}
