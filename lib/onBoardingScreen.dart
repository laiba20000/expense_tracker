import 'dart:ui';

import 'package:expense_tracker/User_Kind.dart';
import 'package:expense_tracker/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/Unboarding_Content.dart';


class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({Key? key}) : super(key: key);

  @override
  _onBoardingScreenState createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  int currentindex = 0;
  PageController _pageController = PageController(initialPage: 0);
  @override

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  List<Unboarding> contents = [
    Unboarding("Assets/logo.png", "Welcome to Expenseway",
        "A awesomne way that gives us many usefull feature"),
    Unboarding("Assets/logo.png", "All your accounts in one place",
        "Add multiple accounts and track where you to invest"),
    Unboarding("Assets/logo.png", "Manage your Shopping Expenses",
        "View all your expenses in very easy way"),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (int index) {
                      setState(() {
                        currentindex = index;
                      });
                    },
                    itemCount: contents.length,
                    itemBuilder: (context, index) {
                      return Padding(padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Image.asset(contents[index].image,
                                height: 300,),
                              Text(contents[index].title,

                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                ),),
                              SizedBox(height: 10),
                              Text(contents[index].descp,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15,
                                    color: Colors.white),)

                            ],

                          )
                      );
                    }),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      contents.length,
                          (index) =>
                          Container(
                            height: 10,
                            width: currentindex== index?10:10,
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: currentindex==index?Colors.black:Colors.white,

                            ),
                          )
                  ),
                ),
              ),

              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.all(50),
                child: TextButton(
                  onPressed: () {
                    if(currentindex==contents.length-1){

                 Navigator.push(context, MaterialPageRoute(builder: (_)=> UserKind()));
                    }
                    _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);

                  },
                  child: Text("Get Started", style: TextStyle(fontSize: 18, color: Colors.white),),


                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white
                    )
                ),
              ),

            ],
          )),

    );
  }
}