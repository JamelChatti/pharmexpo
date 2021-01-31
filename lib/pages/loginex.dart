import 'package:flutter/material.dart';

class LogInex extends StatefulWidget {
  @override
  _LogInexState createState() => _LogInexState();
}

class _LogInexState extends State<LogInex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Login'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: 
          Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  style:TextStyle(color: Colors.deepPurple,fontSize: 20),
                  maxLength: 25,
                  maxLines: 1,
                  textDirection: TextDirection.ltr,
                  initialValue: '',
                  onFieldSubmitted: (val){
                    print(val);
                  },
                    onTap: (){
                    print('tapped');
                    },
                  // onEditingComplete: (){
                  //   print('OK');
                  // },
                  decoration: InputDecoration(
                      //hintText: 'Entrez votre nom',
                    labelStyle: TextStyle(color: Colors.green,fontSize: 20),
                      filled: true,
                      fillColor: Colors.yellowAccent.withOpacity(0.3),
                      prefixIcon: Icon(Icons.supervisor_account,size: 30,),
                      prefixStyle: TextStyle(fontSize: 30,color: Colors.blue),
                     labelText: 'Entrez votre nom',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: (BorderRadius.circular(20)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    )
                  ),
              ],
            ),
          ),)
        ],
      ),
    );
  }
}

// //import 'package:firebase_auth/firebase_auth.dart';
//
// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   void initState() {
//     super.initState();
//   }
//
//   final _formkey = GlobalKey<FormState>();
//   TextEditingController _emailcontroller = TextEditingController();
//   TextEditingController _passwordcontroller = TextEditingController();
//
//   @override
//   void dispose() {
//     _emailcontroller.dispose();
//     _passwordcontroller.dispose();
//     super.dispose();
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Connecter à mon compte'),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16),
//         child: Form(
//           key: _formkey,
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 controller: _emailcontroller,
//                 decoration: InputDecoration(helperText: 'Email'),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 controller: _passwordcontroller,
//                 decoration: InputDecoration(helperText: 'Password'),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               RaisedButton(
//                 color: Colors.blue,
//                 child: Text(
//                   'Login',
//                   style: TextStyle(fontSize: 20, color: Colors.white),
//                 ),
//                 onPressed: () async {
//                   if (_formkey.currentState.validate()) {
//                     var result = await FirebaseAuth.instance
//                         .signInWithEmailAndPassword(
//                         email: _emailcontroller.text,
//                         password: _passwordcontroller.text);
//                     print(result);
//                   }
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
