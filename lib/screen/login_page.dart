import 'package:alternative/widget/btnLogin.dart';
import 'package:alternative/widget/inputAuth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _val = true;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: deviceHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bcg.jpg'), fit: BoxFit.cover),
          ),
          child: Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .07,
                right: MediaQuery.of(context).size.width * .07),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    tileMode: TileMode.clamp,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.white.withOpacity(0.1),
                  Colors.black.withOpacity(0.8),
                  Colors.black,
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height / 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    btn(
                      'Connexion',
                      Color.fromRGBO(230, 30, 36, 1),
                    ),
                    btn('Inscription', Colors.transparent)
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 9),
                InputLogin('Nom ou pseudo'),
                SizedBox(height: MediaQuery.of(context).size.height / 30),
                InputLogin('Mot de passe'),
                SizedBox(height: MediaQuery.of(context).size.height / 100),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Checkbox(
                            onChanged: (bool value) {
                              setState(() {
                                this._val = value;
                              });
                            },
                            value: this._val,
                          ),
                          Text(
                            'Rester connecter',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Mot de passe oublié ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text('Se connecter',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 0.2,
                      width: deviceWidth / 1.5,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: deviceHeight / 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Ou avec',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ],
                ),
                SizedBox(height: deviceHeight / 40),
                Row(
                  children: <Widget>[Container()],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
