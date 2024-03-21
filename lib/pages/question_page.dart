import 'package:flutter/material.dart';
import 'package:quiz_app/pages/result_page.dart';
import 'package:quiz_app/pages/routes.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int score = 0;
  int a = 0;
  List<String> questions = [
    ' A program must have a main function.',
    ' >> is used for output.',
    'In C++ addition is always evaluated before subtraction.',
    ' A C++ statement cannot extend over more than one line.',
    'All data types take up the same amount of storage.'
  ];

  List<int> answer = [1, 0, 0, 0, 0];


  checkresult(){
     Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        score: score,
                      ),
                    ),
                  );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: Text("Question ${a + 1}")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Colors.red,
              child: InkWell(
                
                onTap: () {
                  setState(() {
                    ResultPage(
                      score: score,
                    );
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ResultPage(
                          score: score,
                        ),
                      ),
                    );
                  });
                },
                child: Center(
                  child: Container(
                    
                    child: Text('Submit', style: TextStyle(
                    color: Colors.white,
                    
                  ),),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // area where question will be displayed
          Expanded(
            flex: 3,
            child: Container(
              child: Center(
                child: Text(
                  questions[a],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                setState(() {
                  if (answer[a] == 1) {
                    score += 1;
                  }
                  if (a == 4) {
                    checkresult();
                  } 
                  else if (a < 4) {
                    a += 1;
                  }
                });
              },
              child: Text(
                'True',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                setState(() {
                  if (answer[a] == 0) {
                    score += 1;
                  }
                  if (a == 4) {
                    checkresult();
                  } else if (a < 4) {
                    a += 1;
                  }
                });
              },
              child: Text(
                'False',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
   
    );
  }
}
