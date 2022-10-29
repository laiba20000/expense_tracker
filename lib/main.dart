import 'package:expense_tracker/Fluter%20Topic/Containner.dart';
import 'package:expense_tracker/onBoardingScreen.dart';
import 'package:expense_tracker/pages/add_account.dart';
import 'package:expense_tracker/pages/add_expense.dart';
import 'package:expense_tracker/pages/hone_screen.dart';
import 'package:expense_tracker/pages/transation.dart';
import 'package:flutter/material.dart';
import 'Fluter Topic/SilverAppBar.dart';
import 'main_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: onBoardingScreen()
    );
  }
}



