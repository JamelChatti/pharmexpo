import 'package:flutter/material.dart';


class Comments extends StatefulWidget {
  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            body: Stack(
      children: <Widget>[



        Container(
          color: Colors.white,

           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            margin: EdgeInsets.only(left: 20),
            color: Colors.white,
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Container(
                  height: 5,
                  width: MediaQuery.of(context).size.width  ,
                  decoration: BoxDecoration(border:Border(top: BorderSide(color: Colors.grey))),
                  child:Text('')
                  ,),
                Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.photo_camera),),
                    Container(
                      width: MediaQuery.of(context).size.width - 50,

                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Ajouter un commentaieاكتب تعليق',
                          filled: true,
                          fillColor: Colors.grey[200],
                          suffixIcon: IconButton(icon: Icon(Icons.send),onPressed: (){

                          },),
                            contentPadding: EdgeInsets.all(5),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)
                            )),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        )
      ],
    )));
  }
}
