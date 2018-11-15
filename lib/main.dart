import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';

void main(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum ActionItems {
  ADD_CARD, SET, HELP, FEED, DOWNLOAD
}
Color mainColor =  Colors.lightGreen[900];
TextStyle titleStyle = TextStyle(
    fontFamily: 'Raleway',
    inherit: false,
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
    color: mainColor,
    textBaseline: TextBaseline.alphabetic,
);
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255,211,244,129) ,
        title: Text("Cute Cards", style: titleStyle),
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: mainColor),
            itemBuilder: (BuildContext context) => <PopupMenuItem<ActionItems>>[
              const PopupMenuItem(
                value: ActionItems.ADD_CARD,
                child: Text('添加卡片')
              ),
              const PopupMenuItem(
                value: ActionItems.SET,
                child: Text('设置时长')
              ),
              const PopupMenuItem(
                value: ActionItems.HELP,
                child: Text('帮助')
              ),
              const PopupMenuItem(
                value: ActionItems.FEED,
                child: Text('反馈')
              ),
            ],
            onSelected: (ActionItems selected) {
              print('点击的是$selected');
            },
          ),
          IconButton(
            icon: Icon(Icons.account_box, color: mainColor),
            tooltip: 'account',
            onPressed: () {}
          ),
        ],
      ),
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("materials/design/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Home() ,
      ),
    );
  }
}
