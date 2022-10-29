import 'package:flutter/material.dart';
class YourSaving extends StatefulWidget {
  const YourSaving({Key? key}) : super(key: key);

  @override
  _YourSavingState createState() => _YourSavingState();
}

class _YourSavingState extends State<YourSaving> {
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
                backgroundImage: AssetImage("Assets/img2.png",),
                radius: 60,
              ),
            ),
            SizedBox(height: 20),
            Align(
                alignment: Alignment.topLeft,
                child: Text("Enter Your Saving Account")),
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

                child: Center(child: Text("Add Savings", style: TextStyle(color: Colors.white),)),
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
