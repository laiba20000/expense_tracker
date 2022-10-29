import 'package:expense_tracker/pages/Your_Saving.dart';
import 'package:flutter/material.dart';
class YourIncome extends StatefulWidget {
  const YourIncome({Key? key}) : super(key: key);

  @override
  _YourIncomeState createState() => _YourIncomeState();
}

class _YourIncomeState extends State<YourIncome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        leadingWidth: 20,
        backgroundColor: Colors.green,
        title: Center(child: Text("All Banks", style: TextStyle(color: Colors.white),)),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.arrow_back,color: Colors.white,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("Assets/img1.png",),
                radius: 60,
              ),
            ),
            SizedBox(height: 20),
            Align(
                alignment: Alignment.topLeft,
                child: Text("Enter Your Income Account")),
            SizedBox(height: 10),
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.green.shade200
                ),

              ),
              child: TextFormField(

                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>YourSaving()));
              },
              child: Container(
                height: 40,

                child: Center(child: Text("Add Income", style: TextStyle(color: Colors.white),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green,
                ),

              ),
            ),
          ],

        ),
      ),
    );
  }
}
