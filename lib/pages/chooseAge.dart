import 'package:pharmexpo/Globals.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class ChooseAge extends StatefulWidget {
  @override
  _ChooseAgeState createState() => _ChooseAgeState();
}

class _ChooseAgeState extends State<ChooseAge> {
  savePref(String age)async{
    Globals.localStorage.setString("age", age);
    print(Globals.localStorage.getString('age'));
  }
  getPref()async{
    SharedPreferences preferences =await SharedPreferences.getInstance();
    var age = preferences.getString('age');
    if(age != null){
      Navigator.of(context).pushNamed('home');
  }
  }
  @override
  void initState() {
    getPref();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choisir un pays'),
      ),
      body: Container(height: 500,width: 400,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
           ListTile(title: Text('Nourrisson',),onTap: (){
         savePref('Nourrisson');
      },
           trailing: Image.asset('images/ageperson/bebe.jfif',width: 150,height: 250,),
           ),
            ListTile(title: Text('Enfant',),onTap: (){
              savePref('Enfant');
            },
              trailing: Image.asset('images/ageperson/enfant.png',width: 150,height: 250,),
            ),
            ListTile(title: Text('Adulte',),onTap: (){
              savePref('Adulte');
            },
              trailing: Image.asset('images/ageperson/adult.jfif',width: 150,height: 250,),
            ),
          ],
        ),
      ),
    );
  }
}
