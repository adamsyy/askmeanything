import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Lmao(),
      ),
    );

class Lmao extends StatefulWidget {

  @override
  _LmaoState createState() => _LmaoState();
}

class _LmaoState extends State<Lmao> {
  var x=1;


  @override
  Widget build(BuildContext context) {
    x=Random().nextInt(5)+1;
    return Scaffold(
backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Center(
      child: FlatButton(
        child: Image.asset('images/ball$x.png'),onPressed: (){
          setState(() {
            x=Random().nextInt(5)+1;
          });
      },
      )
      ),
    );
  }
}
