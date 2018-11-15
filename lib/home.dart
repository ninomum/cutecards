import 'package:flutter/material.dart';

import 'card_option.dart';
import 'data.dart';
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection:Axis.horizontal,
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: options.map<Widget>((Option option) {
            return CardOption(option: option);
          }).toList()
      // <Widget>[
      //   // Option(),
      //   // const Text('33333333333333'),
      //   // const Text('444444444444'),
      //   // const Text('55555555555'),
      // ],
    );

    // return Row(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: <Widget>[
    //       Expanded(
    //         flex: 2,
    //         child: Text("111")
    //       ),
    //       Expanded(
    //         flex: 3,
    //         child: Text("3333333333"),
    //       ),          
    //     ]
    // );
  }
}
