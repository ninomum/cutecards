import 'package:flutter/material.dart';

import 'data.dart';
import 'card_category.dart';

class CardOption extends StatefulWidget {
  CardOption({Key key,
   @required this.option
   }) : super(key: key);

  final Option option;

  @override
  _CardOptionState createState() => _CardOptionState();
}

class _CardOptionState extends State<CardOption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
          Text( widget.option.name),
          CardCategory(),
        ]         
        ),
      );
  }
}
