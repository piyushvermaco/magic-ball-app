import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          title: Center(child: Text('MAGIC BALL')),
          backgroundColor: Colors.black,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void changeDiceFace() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
          FlatButton(
          onPressed: () {
            changeDiceFace();
          },
            child: Card(
              color: Colors.black,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                  title: Center(
                    child: Text(
                      'ASK ME ANYTHING',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}
