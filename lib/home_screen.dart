import 'package:flutter/material.dart';

import 'eservices/screens/esevices_screen.dart';
import 'main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/lady_bg.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/logo_bird_white.png'),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150.0,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Material(
                        color: Colors.white.withOpacity(.6),
                        child: InkWell(
                          splashColor: Colors.blue.withOpacity(.1),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.adjust,
                                  size: 28.0,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  'Sign In',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Material(
                              color: Colors.white.withOpacity(.1),
                              child: InkWell(
                                onTap: () {
                                  print('pressed');
                                },
                                child: Container(
                                  height: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.person_add,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8.0),
                                      Text(
                                        'Register',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Expanded(
                            flex: 1,
                            child: Material(
                              color: Colors.white.withOpacity(.1),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EservicesScreen()));
                                },
                                child: Container(
                                  height: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.donut_large,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8.0),
                                      Text(
                                        'eServices',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  color: Colors.white.withOpacity(.1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
