import 'package:flutter/material.dart';
import 'package:quizperfecto/quizmodel.dart';
import 'package:quizperfecto/quizview.dart';
import 'package:quizperfecto/result.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  QuistionMod qstmodl = QuistionMod();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: ListView.builder(
              itemCount: qstmodl.quistionslist.length,
              itemBuilder: (context, i) => QuizView(qstmodl, i, i))),
      ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Result(counttrue())));
          },
          child: Text("submit"))
    ]);
  }
}
