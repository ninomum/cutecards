import 'package:flutter/material.dart';

import 'data.dart';

class CardCategory extends StatefulWidget {
  CardCategory({Key key,
   }) : super(key: key);

  @override
  _CardCategoryState createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
    child: 
     Stack(
            children: <Widget>[
              Positioned(
                top: 4.0,
                child: Text("0909"),
              ),
              Text("43543"),
            ],
     ),
    
    );
  }
}
