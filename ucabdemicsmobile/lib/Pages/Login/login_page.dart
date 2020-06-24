import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _email = '';
  String _password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 10.0,
        ),
        children: <Widget>[
          _startimage(),
          SizedBox(height: 20.0,),
          _primarytext(),
          SizedBox(height: 40.0,),
          _inputemail(),
          _inputpassword(),
          SizedBox(height: 30.0,),
          _loginbutton(),
          SizedBox(height: 60.0,),
          Center(child:Text('No tienes Cuenta?', style: TextStyle(color:Colors.grey),)),
          _finalpiece(),
        ],
      ),
    );
  }

  Widget _startimage(){

    return Image(
      image: AssetImage('assets/images/logo/logo_small_0.1.png'),
      alignment: Alignment.centerLeft,
      );

  }

  Widget _primarytext() {

    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'Sign In \n',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal,
              fontSize: 40.0,
            )
          ),
          TextSpan(
            text: 'Sign in to continue our application',
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Poppins',
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
        _email = valor;
      },
    );

  }

  Widget _inputpassword() {

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: Icon(Icons.visibility),
      ),
      onChanged: (valor){
        _password = valor;
      },
    );

  }


  Widget _loginbutton() {

    return Container(
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF40B4E5),
            Color(0xFF06C452),
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
        child: Text("Sign In"),
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
        child: Text("Register"),
      ),
    );
  }


}