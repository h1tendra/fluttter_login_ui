import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
//                image: DecorationImage(
//                  image: AssetImage('images/bg.jpg'),
//                  fit: BoxFit.cover,
//                ),
              color: Color(0xFF7FE5D7),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: topIconBar(),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: LoginForm(),
                ),
                Transform.scale(
                  alignment: Alignment.topCenter,
                  scale: 2,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(
                      IconData(
                        0xe5c5,
                        fontFamily: 'MaterialIcons',
                      ),
                      size: 34,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Center(
              child: Text('Section 2'),
            ),
          ),
        ],
      ),
    );
  }

  // Top icon bar
  Widget topIconBar() {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  IconData(0xe5d2, fontFamily: 'MaterialIcons'),
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(
                  IconData(0xe3b6, fontFamily: 'MaterialIcons'),
                  color: Color(0xFFFE881F),
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            width: 300,
            child: getTextField('@username', 'username'),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: 300,
            child: getTextField('password', 'password', true),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            width: 150,
            child: OutlineButton(
              onPressed: () {},
              child: Text(
                'GO !',
                style: TextStyle(fontSize: 24),
              ),
              textColor: Color(0xFFFFFFFF),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getTextField(String hintText, String key, [bool isPassword = false]) {
    return new TextField(
      key: Key(key),
      textAlign: TextAlign.center,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        fillColor: Color(0xFFD8F0F2),
        filled: true,
      ),
    );
  }
}
