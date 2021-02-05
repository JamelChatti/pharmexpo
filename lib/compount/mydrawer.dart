import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pharmexpo/Globals.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  var username;
  var email;
  bool isSignin= false;
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    username = Globals.localStorage.getString("username");
    email = Globals.localStorage.getString("email");
    isSignin = Globals.localStorage.getBool("isSignin") != null ? Globals.localStorage.getBool("isSignin") : false;
    return Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(

              accountEmail: isSignin ? Text(email) : Text(''),
              accountName: isSignin ? Text(username) : Text(''),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  image: DecorationImage(
                      image: AssetImage('images/drawer.webp'),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              onTap: () {
                print('press');
              },
            ),
            ListTile(
              title: Text('Toutes les marques'),
              leading: Icon(Icons.category, color: Colors.blue),
              onTap: () {
                print('press');
                Navigator.of(context).pushNamed('categories');
              },
            ),
            isSignin? ListTile(
              title: Text('Ajouter un commentaire'),
              leading: Icon(
                Icons.chat,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.of(context).pushNamed('post');
              },
            )
            : SizedBox(height: 1,),
            Divider(
              color: Colors.red,
              height: 30,
            ),
            isSignin ? ListTile(
              title: Text('Quitter'),
              leading: Icon(Icons.exit_to_app, color: Colors.blue),
              onTap: () async {
                Globals.localStorage.remove("username");
                Globals.localStorage.remove("email");
                Globals.localStorage.setBool("isSignin", false);
                setState(() {

                });
                await Future.delayed(Duration(milliseconds: 50));
                Navigator.of(context).pushNamed('login');
                print('press');
              },
            )
           : ListTile(
              title: Text('Login'),
              leading: Icon(Icons.exit_to_app, color: Colors.blue),
              onTap: () {

                Navigator.of(context).pushNamed('login');
                // print('press');
              },
            ),
          ],
        ));
  }
}
