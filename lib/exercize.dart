import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercize extends StatefulWidget {
  const Exercize({Key key, @required this.counter}) : super(key: key);
  final String counter;
  @override
  State<Exercize> createState() => ExercizeState();
}

class ExercizeState extends State<Exercize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Center(
              child: Text(
                "San:${widget.counter}",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            height: 60.0,
            width: 300.0,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 37, 111, 147),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}
