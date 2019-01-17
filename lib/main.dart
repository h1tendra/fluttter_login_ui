import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Playground',
        theme: ThemeData(
          primarySwatch: Colors.brown,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
        ),
        home: Scaffold(
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: LoginPage(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ));
  }
}

class LoginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  FlutterLogo(
                    size: 100.0,
                    colors: Colors.deepPurple,
                  ),
                  Text(
                    'Log in',
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
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              'LOGIN',
                            ),
                            color: Colors.tealAccent,
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
              child: RaisedButton(
                onPressed: () {},
                child: Text('LOGIN WITH FACEBOOK'),
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                child: Text('LOGIN WITH GOOGLE'),
                color: Colors.cyan,
              ),
            ),
          ],
        )
      ],
    );
  }
}
