import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('chatti261@gmail.com'),
              accountName: Text('Chatti'),
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
            Divider(
              color: Colors.red,
              height: 30,
            ),
            ListTile(
              title: Text('Login'),
              leading: Icon(Icons.exit_to_app, color: Colors.blue),
              onTap: () {
                Navigator.of(context).pushNamed('login');
                print('press');
              },
            ),
          ],
        ));
  }
}
