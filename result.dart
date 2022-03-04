import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int res;

  Result(this.res);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ya yaso3'),
        ),
        body: Center(
          child: Container(
            child: Text(
              "your result $res",
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ));
  }
}
