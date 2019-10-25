import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const backgroundColor = Color(0xff5E37DB);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Row(
          children: <Widget>[
            SizedBox(width: 32.0),
            Icon(Icons.arrow_back_ios),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.greenAccent.withOpacity(0.2)),
              child: MaterialButton(
                  child: Row(
                    ,
                children: <Widget>[
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  SizedBox(width: 12.0),
                  Text(
                    "Friends",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              )),
            ),
          )
        ],
      ),
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          userWidget(),
          pointsWidget(),
          graphWidget(),
          friendsWidget(),
        ],
      ),
    );
  }

  Widget userWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 24),
      child: Row(
        children: <Widget>[
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage("images/7.jpg"))),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Enzo",
                style: TextStyle(
                    color: Color(0xffffd6ff),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Perez",
                style: TextStyle(
                  color: Color(0xffffd6ff),
                  fontSize: 24,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget pointsWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, top: 24.0, right: 16.0),
      child: Container(
        width: double.infinity,
        height: 120.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      ),
    );
  }

  Widget graphWidget() => Container();

  Widget friendsWidget() => Container();
}
