import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_page.dart';
import 'package:quiz_app/pages/question_page.dart';
import 'package:quiz_app/pages/result_page.dart';
import 'package:quiz_app/pages/routes.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: const HomePage(),
   // make routes for question page
   initialRoute: Routes.homeRoute,
   routes:{
     Routes.homeRoute:((context) => const HomePage()),
     Routes.question_pageRoute:(context) => const QuestionPage(),
    //  Routes.result_pageRoute:(context) => ResultPage(score: ),),
   } ,
  ));
}

