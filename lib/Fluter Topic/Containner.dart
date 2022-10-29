import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ContainnerApp extends StatefulWidget {
  const ContainnerApp({Key? key}) : super(key: key);

  @override
  _ContainnerAppState createState() => _ContainnerAppState();
}

class _ContainnerAppState extends State<ContainnerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         Flexible(
           child: Container(
             height: 100,
        width: 100,
        color: Colors.deepPurple,
             child: Column(
               children: [
                 Flexible(
                   child: Container(
                     child: Text("hello",
                     ),
                   ),
                 ),
                 Flexible(
                   child: Container(
                     child: Text("hello",
                     ),
                   ),
                 ),
                 Flexible(
                   child: Container(
                     child: Text("hello",
                     ),
                   ),
                 ),
                 Flexible(
                   child: Container(
                     child: Text("hello",
                     ),
                   ),
                 ),

               ],
             ),
           ),
         ),


        ],
      ),
    );
  }
}
