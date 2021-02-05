import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharmexpo/pages/comments.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pharmexpo/Globals.dart';

import 'dart:convert';
import "package:http/http.dart" as http;

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  List posts = [
    {
      'name': 'jamel',
      'content': 'j\'ai des boutons noirs je veux un traittement '
    },
    {
      'name': 'chatti',
      'content': 'je veux une créme pour des fissures au talon'
    }
  ];


  Future getPost() async {
    var url = 'http://192.168.42.23/pharmexpo/post.php';
    var response = await http.get(url);
    var responseody = jsonDecode(response.body);
    return responseody;
  }

  var username;
  var email;

  @override
  void initState() {
    getPost();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    username = Globals.localStorage.getString("username");
    email = Globals.localStorage.getString("email");
    return Scaffold(
        appBar: AppBar(title: Text('Ajouter un commentaire')),
        body: ListView(
          children: <Widget>[
            Card(
                child: Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: TextFormField(
                    maxLines: 10,
                    minLines: 1,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 8),
                        hintText: 'Ajouter un commentaire',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1))),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Publier',
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                              ),
                              Icon(
                                Icons.add_box,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
            FutureBuilder(
              future: getPost(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: <Widget>[
                      for (int i = 0; i < snapshot.data.length; i++)
                        PostList(
                          name: snapshot.data[i]['post_user'],
                          contentpost: snapshot.data[i]['post'],
                        )
                    ],
                  );
                }
                return CircularProgressIndicator();
              },
            )
          ],
        ));
  }
}

class PostList extends StatelessWidget {
  final name;
  final contentpost;

  PostList({this.name, this.contentpost});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Container(
              child: Text(name),
            ),
            trailing: Icon(Icons.filter_list),
            isThreeLine: true,
            subtitle: Text(contentpost),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.5),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.grey))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'j\'aime',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.thumb_up)
                    ],
                  ),
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                ),
                onTap: () {},
              )),
              Expanded(
                  child: InkWell(
                child: Padding(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        'Commenter',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.chat_bubble_outline)
                    ],
                  ),
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Comments();
                  }));
                },
              ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5,
            ),
          )
        ],
      ),
    );
  }
}
