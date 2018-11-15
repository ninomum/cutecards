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


     GridView.count(
                crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                padding: const EdgeInsets.all(4.0),
                childAspectRatio: (orientation == Orientation.portrait) ? 1.0 : 1.3,
                children: options.map<Widget>((Option option) {
  }
}
