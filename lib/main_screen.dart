import 'package:expense_tracker/pages/add_account.dart';
import 'package:expense_tracker/pages/assets.dart';
import 'package:expense_tracker/pages/hone_screen.dart';
import 'package:expense_tracker/pages/liabitlity.dart';
import 'package:expense_tracker/pages/transation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab=0;
  List<Widget> screens=[
    HomeScreen(),
    Transaction(),
    Assets(),
    Liability()
  ];
  final PageStorageBucket pageStorageBucket=PageStorageBucket();
  Widget currentScreen=HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: PageStorage(
      child: currentScreen,
      bucket: pageStorageBucket,
    ),
   floatingActionButton: FloatingActionButton(
     child: Icon(Icons.add),
     onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (_)=> AddAcount()));

     },

   ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [

                  MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen=HomeScreen();
                          currentTab=0;
                        }

                        );

                      },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.house,
                          color: currentTab==0? Colors.green[300]:Colors.black,
                        ),
                        Text("Home",
                        style: TextStyle(
                          color: currentTab==0?Colors.green[300]:Colors.black,
                        ),)
                      ],
                    ),
                      ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen=Transaction();
                        currentTab=1;
                      }

                      );

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.swap_horiz_outlined,
                          color: currentTab==1? Colors.green[300]:Colors.black,
                        ),
                        Text("Transaction",
                          style: TextStyle(
                            color: currentTab==1?Colors.green[300]:Colors.black,
                          ),)
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [

                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen=Assets();
                        currentTab=2;
                      }

                      );

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bar_chart,
                          color: currentTab==2? Colors.green[300]:Colors.black,
                        ),
                        Text("Assets",
                          style: TextStyle(
                            color: currentTab==2?Colors.green[300]:Colors.black,
                          ),)
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen=Liability();
                        currentTab=3;
                      }

                      );

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.business_center_outlined,
                          color: currentTab==3? Colors.green[300]:Colors.black,
                        ),
                        Text("liability",
                          style: TextStyle(
                            color: currentTab==3?Colors.green[300]:Colors.black,
                          ),)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),


    );
  }
}
