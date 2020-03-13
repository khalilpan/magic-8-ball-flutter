import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("8Ball"),
            centerTitle: true,
            backgroundColor: Colors.blue[900],
          ),
          body: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
//              Text('Press the Ball to see answer'),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/ball$ballNumber.png'),
                  onPressed: () {
                    setState(
                      () {
                        ballNumber = Random().nextInt(4) + 1;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
