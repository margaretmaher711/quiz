//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quizperfecto/quizmodel.dart';

List<bool> myWht = [];
int rescount = 0;

int counttrue() {
  myWht.forEach((element) {
    if (element == true) {
      rescount++;
    }
  });
  return rescount;
}

class QuizView extends StatefulWidget {
  QuistionMod qstmodl;

  int qstindx;
  int ansindx;
  int c = 5;

  QuizView(this.qstmodl, this.qstindx, this.ansindx);

  @override
  _QuizViewState createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  @override
  Widget build(BuildContext context) {
    int? c = 5;

    return SingleChildScrollView(
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                  widget.qstmodl.quistionslist[widget.qstindx],
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: List.generate(
                      widget.qstmodl.answersList[widget.ansindx].length,
                      (index) => RadioListTile(
                            title: Text(
                              widget.qstmodl.answersList[widget.ansindx][index],
                              style: TextStyle(fontSize: 18.0),
                            ),
                            value: index,
                            onChanged: (choice) {
                              setState(() {
                                c = choice as int?;
                                if (widget.qstmodl.rightans.contains(widget
                                    .qstmodl
                                    .answersList[widget.ansindx][index])) {
                                  myWht.add(true);
                                } else
                                  myWht.add(false);
                                print(myWht);
                              });
                            },
                            groupValue: c,
                          )),
                ),
              ],
            )),
      ]),
    );
  }
}
