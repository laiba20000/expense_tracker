import 'package:expense_tracker/pages/Your_income.dart';
import 'package:flutter/material.dart';
class AddBank extends StatefulWidget {
  const AddBank({Key? key}) : super(key: key);

  @override
  _AddBankState createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {
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
                child: Text("Account title")),
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
            SizedBox(height: 20),
            Align(
                alignment: Alignment.topLeft,
                child: Text("Account Amount")),
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
              SizedBox(height: 30),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>YourIncome()));
                },
                child: Container(
                height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green,
                  ),
                  child: Center(child: Text("Add Bank", style: TextStyle(color: Colors.white),)),

    ),
              ),
          ],
        ),
      ),
    );
  }
}
