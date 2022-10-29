import 'package:expense_tracker/pages/add_expense.dart';
import 'package:flutter/material.dart';
class EditAsset extends StatefulWidget {
  const EditAsset({Key? key}) : super(key: key);

  @override
  _EditAssetState createState() => _EditAssetState();
}

class _EditAssetState extends State<EditAsset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        leadingWidth: 20,
        backgroundColor: Colors.green,
        title: Center(child: Text("Add Asset", style: TextStyle(color: Colors.white),)),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.arrow_back,color: Colors.white,),
        ),
      ),

      body:  Padding(
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
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey
                ),

              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Title...",
                  contentPadding: EdgeInsets.only(left: 10),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey
                ),

              ),
              child: TextFormField(

                decoration: InputDecoration(
                  hintText: "Description...",
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
               Navigator.push(context, MaterialPageRoute(builder: (_)=>AddExpense()));
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green,
                ),
                child: Center(child: Text("Continue", style: TextStyle(color: Colors.white),)),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
