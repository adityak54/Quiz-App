import 'package:flutter/material.dart';
import 'package:quiz_app/pages/question_page.dart';
import 'package:quiz_app/pages/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: Center(
            child: Text(
          "Quizzy",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, children: [
        Material(
          child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, Routes.question_pageRoute);
                });
              },
              splashColor: Colors.yellow,
              borderRadius: BorderRadius.circular(50),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue),
                  width: 300,
                  height: 70,
                  //  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Start Quiz",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              )),
        )
      ]),
    );
  }
}
