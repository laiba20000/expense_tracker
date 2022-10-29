import 'package:expense_tracker/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserKind extends StatelessWidget {
  const UserKind({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 80),
              child: Text(
                "What Kind user are you?",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "Assets/student.jpg",
                        ),
                        radius: 50,
                      ),
                      Text(
                        "Student",
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "Assets/business.jpg",
                        ),
                        radius: 50,
                      ),
                      Text(
                        "Business man",
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "Assets/professional.jpg",
                        ),
                        radius: 50,
                      ),
                      Text(
                        "Professional",
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "Assets/retired.jpg",
                        ),
                        radius: 50,
                      ),
                      Text(
                        "Retired",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ],
            ),
/*        SizedBox(height: 50),
            Container(
              height: 50,
              padding: EdgeInsets.all(15),
              width: double.infinity,
              margin: EdgeInsets.all(20),
              color: Colors.grey[300],
              child: Text("Defaul Currency",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black),
              ),

            ),*/

            SizedBox(height: 70),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> MainScreen()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.all(14),
                color: Colors.green[300],
                child: Center(child: Text("Continue", style: TextStyle(color: Colors.white,

                ),

                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
