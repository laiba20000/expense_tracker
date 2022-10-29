import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
class AddExpense extends StatefulWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  _AddExpenseState createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
 final format=DateFormat('yyyy-MM-dd HH:mm');
  final list=[
    "Car",
     "Auto",
    "Bike"

  ];
  final income=[
    "10,000-20,000",
    "30,000-40,000",
    "50,000-60,000",
    "70,000-80,000",
    "90,000-100,000"
  ];
  String? value1;
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            //color: Colors.orange,
            child: Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                    )
                  ),
                ),
               // Text('Categorty'),
                Positioned(
                  top: 70,
                  left: 0,
                  right: 0,
                  bottom: 10,
                  child: Container(

                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    margin: EdgeInsets.symmetric(horizontal: 20, ),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("Enter your expenses", style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 16
                            ),)
                        ),
                        SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text.rich(
                                TextSpan(
                                children: [
                                  TextSpan(
                                    text: "PKR",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " 1,300",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,

                                    ),
                                  )
                                ]
                              ),

                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(Icons.qr_code,))

                          ],
                        ),

                      ],
                    ),

                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.grey
                      )]
                    ),
                  ),
                ),
              
              ],



            ),
          ),
          SizedBox(height: 50),
          Container(
            //color: Colors.yellow,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        "Category",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    )
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey
                    ),

                  ),

                  child: DropdownButton<String>(
                    hint: Text("Transport"),
                    isExpanded: true,
                    underline: SizedBox(),
                 //   dropdownColor: Colors.grey,
                    icon: Icon(Icons.arrow_drop_down_outlined),
                    value: value,

                     items: list.map(buildMenuItem).toList(),
                   onChanged: (value)=> setState(() =>  this.value=value),

                    ),

                  ),
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Date And Time",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    )
                ),
                SizedBox(height: 5),
                Container(
                //  padding: EdgeInsets.only(left: , right: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey
                    ),

                  ),
                child: DateTimeField(

                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),

                    hintText: "Date & Time",
                    suffixIcon: Icon(Icons.calendar_today_sharp),
                  ),
                  format: format,
                  onShowPicker: (context, currentValue) async{
                    final date= await showDatePicker(
                        context: context,
                        initialDate: currentValue?? DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100)
                    );
                    if(date!=null){
                      final time= await showTimePicker(context: context,
                          initialTime: TimeOfDay.fromDateTime(currentValue??DateTime.now()));
                        if(time!=null){
                          return DateTimeField.combine(date, time);
                        }else{
                          currentValue;
                        }
                    }


                  }),


                ),
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Cash",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    )
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey
                    ),

                  ),

                  child: DropdownButton<String>(
                    hint: Text("Income"),
                    isExpanded: true,
                    underline: SizedBox(),
                    //   dropdownColor: Colors.grey,
                    icon: Icon(Icons.arrow_drop_down_outlined),
                    value: value1,

                    items: income.map(buildMenuItem1).toList(),
                    onChanged: (value1)=> setState(() =>  this.value1=value1),

                  ),

                ),
                SizedBox(height: 50),
                InkWell(
                  onTap: (){
                 //   Navigator.push(context, MaterialPageRoute(builder: (_)=>AddExpense()));
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
          )
        ],
      ),



    );

  }

}
DropdownMenuItem<String>buildMenuItem(String item)=> DropdownMenuItem(
    value: item,
    child: Text(
      item,style: TextStyle(color: Colors.black),
    )
);
DropdownMenuItem<String>buildMenuItem1(String item1)=> DropdownMenuItem(
    value: item1,
    child: Text(
      item1,style: TextStyle(color: Colors.black),
    )
);