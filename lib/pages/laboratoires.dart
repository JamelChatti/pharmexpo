import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class Laboratoires extends StatefulWidget {
  @override
  _LaboratoiresState createState() => _LaboratoiresState();
}

class _LaboratoiresState extends State<Laboratoires> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Les laboratoires'),

    ),
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
            'Les Labolatoires',
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
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
                      'images/labo/avene.png',
                      fit: BoxFit.fill,
                    ),
                    footer: Container(
                      color: Colors.blue,
                      child: Text(
                        'Avene',
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
                        'images/labo/acm.png',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.blue,
                        child: Text(
                          'Avene',
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
                        'images/labo/eye.png',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.blue,
                        child: Text(
                          'eye CARE cosmetics',
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
                        'images/labo/filor.png',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.blue,
                        child: Text(
                          'Filorga',
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
                        'images/labo/pf.png',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.blue,
                        child: Text(
                          'Pierre Fabre',
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
                        'images/labo/vichy.jpg',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.blue,
                        child: Text(
                          'Vichy',
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
                        'images/labo/uri.jfif',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.blue,
                        child: Text(
                          'Uriage',
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                child: InkWell(
                  child: GridTile(child: Image.asset(
                    'images/svr.png',
                    // fit: BoxFit.fill,
                  ),
                      footer: Container(
                        color: Colors.blue,
                        child: Text(
                          'SVR',
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
                        'images/labo/nux.jfif',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.blue,
                        child: Text(
                          'Nuxe',
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
                        'images/labo/nore.jfif',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.blue,
                        child: Text(
                          'Noreda',
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
                        'images/labo/bo.jfif',
                        fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.blue,
                        child: Text(
                          'Bio orient',
                          textAlign: TextAlign.center,
                        ),
                      )),
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
                      child: Image.asset(
                        'images/labo/bioderma.jfif',
                        //fit: BoxFit.fill,
                      ),
                      footer: Container(
                        color: Colors.blue,
                        child: Text(
                          'Bioderma',
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
