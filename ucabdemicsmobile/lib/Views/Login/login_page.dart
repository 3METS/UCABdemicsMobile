import 'package:flutter/material.dart';

import 'package:ucabdemicsmobile/sources/Constants/constats.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 10.0,
        ),
        children: <Widget>[
          logosmall01(),
          SizedBox(height: 20.0,),
          _primarytext('Iniciar Sesion', '\nInicia sesión para continuar con la aplicación'),
          SizedBox(height: 40.0,),
          _inputemail(),
          _inputpassword(),
          SizedBox(height: 30.0,),
          _loginbutton(),
          SizedBox(height: 60.0,),
          Center(child:Text('¿No tienes Cuenta?', style: TextStyle(color:Colors.grey),)),
          _finalpiece(),
        ],
      ),
    );
  }

  Widget _primarytext(String titulo, String titulo2) {

    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: titulo,
            style: TextStyle(
              color: Colors.black,
              fontFamily: mainFont,
              fontWeight: FontWeight.normal,
              fontSize: 40.0,
            )
          ),
          TextSpan(
            text: titulo2,
            style: TextStyle(
              color: Colors.grey,
              fontFamily: mainFont,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );

  }

  Widget _inputemail() {

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'usuario@ucab.est.edu.ve',
        labelText: 'Email',
        suffixIcon: Icon(Icons.perm_identity),
      ),
      onChanged: (valor){
      },
    );

  }

  Widget _inputpassword() {

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Contraseña',
        suffixIcon: Icon(Icons.visibility),
      ),
      onChanged: (valor){
      },
    );

  }


  Widget _loginbutton() {

    return Container(
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            myBlue,
            myGreen,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child:FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        splashColor: Colors.white10,
        onPressed: () {},
        child: Text("Iniciar Sesión"),
      ),
    );

  }

  Widget _finalpiece() {

    return Container(
      height: 30,
      width: 40,
      padding: EdgeInsets.all(0.0),
      child:FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textColor: Colors.blue,
        onPressed: () {},
        child: Text("Registrarse"),
      ),
    );
  }


}