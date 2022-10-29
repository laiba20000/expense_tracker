import 'package:expense_tracker/pages/all_bank.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AddAcount extends StatelessWidget {
  const AddAcount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 20,
        backgroundColor: Colors.green,
        title: Center(child: Text("Add Account", style: TextStyle(color: Colors.white),)),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.arrow_back,color: Colors.white,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Wrap(
         children: [Column(
            children: [
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Choose Account",

                  style: TextStyle(
                      fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black

                    ),)),
              SizedBox(height: 15),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Bank",
                  style: TextStyle(fontSize: 18),)),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("Assets/hbl.jpg"),
                          radius: 30,

                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Habib")
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("Assets/allied.jpg"),
                          radius: 30,

                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Allied")
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("Assets/js.png"),
                          radius: 30,

                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("JS Bank",
                        textAlign: TextAlign.center,)
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("Assets/ubl.jpg"),
                          radius: 30,

                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("UBL",
                        textAlign: TextAlign.center,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("Assets/meezan.jpg"),
                          radius: 30,

                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Meezan")
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("Assets/HBL.png"),
                          radius: 30,

                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("HBL")
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("Assets/bop.jpg"),
                          radius: 30,

                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("BOP",
                          textAlign: TextAlign.center,)
                      ],
                    ),


                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> AllBank()));

                      },
                      child: Text("See all",
                        textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration:TextDecoration.underline
                      ),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Bank", style: TextStyle(fontSize: 16, color: Colors.black),

                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("Assets/money.jpg",),
                    radius: 30,
                  ),
                ),
              )

            ],
          ),
      ]
        ),
      ),
    );
  }
}
