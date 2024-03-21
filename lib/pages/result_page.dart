import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_page.dart';
import 'package:quiz_app/pages/routes.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key? key, required this.score}) : super(key: key);

  int score;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {


  Future<bool> _onWillPop() async {
  return (await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: new Text('Are you sure?'),
          content: new Text('Do you want to fo back to Home Page'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false), //<-- SEE HERE
              child: new Text('No'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, Routes.homeRoute), // <-- SEE HERE
              child: new Text('Yes'),
            ),
          ],
        ),
      )) ??
      false;
}
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Score is :',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                '${widget.score}/5',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, Routes.homeRoute);
                  });
                },
                child: Text(
                  'Go to Home',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
