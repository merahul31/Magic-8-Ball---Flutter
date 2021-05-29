import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Ask Me Anything'),
        ),
        body: MagicPage(),
      ),
    ),
  );
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int imageNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  imageNumber=Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$imageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
