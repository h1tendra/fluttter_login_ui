import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      FlutterLogo(
                        size: 100.0,
                        colors: Colors.orange,
                      ),
                      Text(
                        'Meet',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                          top: 20.0,
                          bottom: 5.0,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                        obscureText: true,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 10.0,
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: OutlineButton(
                                onPressed: () {},
                                child: Text(
                                  'GO !',
                                  style: TextStyle(fontSize: 24),
                                ),
                                color: Colors.cyan,
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20.0,
                bottom: 20.0,
              ),
              child: Center(
                child: Text('OR'),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 50,
                    child: FlatButton(
                      onPressed: () {
                        print('login with fb pressed.');
                      },
                      child: Image(
                        image: AssetImage('images/loginwithfacebook.png'),
                      ),
                      padding: EdgeInsets.all(0),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    child: FlatButton(
                      onPressed: () {
                        print('login with google pressed.');
                      },
                      child: Image(
                          image: AssetImage('images/loginwithgoogle.png')),
                      padding: EdgeInsets.all(0),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
