import 'package:alternative/widget/btnLogin.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bcg.jpg'), fit: BoxFit.cover),
        ),
        //     child: Column(
        //       children: <Widget>[
        //         SizedBox(height: MediaQuery.of(context).size.height / 6),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: <Widget>[
        //             btn(
        //               'Connexion',
        //               Color.fromRGBO(230, 30, 36, 1),
        //             ),
        //             btn('Inscription', Colors.transparent)
        //           ],
        //         ),
        //         SizedBox(height: MediaQuery.of(context).size.height / 9),
        //         Container(
        //           height: MediaQuery.of(context).size.height / 14,
        //           width: MediaQuery.of(context).size.width / 1.3,
        //           alignment: Alignment.center,
        //           decoration: BoxDecoration(
        //               color: Colors.white, borderRadius: BorderRadius.circular(5)),
        //           child: TextFormField(
        //             decoration: InputDecoration(
        //                 border: InputBorder.none,
        //                 hintText: 'nom ou Pseudo',
        //                 hintStyle: TextStyle()),
        //           ),
        //         ),
        //       ],
        //     ),
      ),
      //
    );
  }
}
