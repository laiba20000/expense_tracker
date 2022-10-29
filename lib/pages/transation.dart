import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:expense_tracker/model/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:intl/intl.dart';
import '../model/transaction.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  //bool _value= false;
  int _value= -1;
  String? value;

  final format=DateFormat('yyyy-MM-dd HH:mm');
  final list=[
    "Car",
    "Auto",
    "Bike"

  ];
  List<transation> _transation = [
    transation("transport", 700, "oct 20, 2022"),
    transation("transport", 900, "oct 20, 2022"),
    transation("transport", 1000, "oct 20, 2022"),
    transation("transport", 1200, "oct 20, 2022"),
    transation("transport", 1200, "oct 20, 2022"),
    transation("transport", 700, "oct 20, 2022"),
    transation("transport", 700, "oct 20, 2022"),
    transation("transport", 700, "oct 20, 2022"),
    transation("transport", 700, "oct 20, 2022"),
    transation("transport", 700, "oct 20, 2022"),
    transation("transport", 700, "oct 20, 2022"),
    transation("transport", 700, "oct 20, 2022"),
    transation("transport", 700, "oct 20, 2022"),
    transation("transport", 700, "oct 20, 2022"),
    transation("transport", 70000, "oct 20, 2022"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade50,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(20),
                            ),
                          backgroundColor: Colors.transparent,
                             child: contextBox(context),
                            );
                      });
                },
                icon: Icon(Icons.arrow_downward)),
            IconButton(onPressed: () {
              showDialog(context: context, builder: (BuildContext context){
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.transparent,
                  child: DialogBox(context),
                );
              });

            }, icon: Icon(Icons.filter_list_sharp))
          ],
          leadingWidth: 20,
          backgroundColor: Colors.green,
          title: Center(
              child: Text(
            "Transation",
            style: TextStyle(color: Colors.white),
          )),
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: _transation.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Icon(
                          Icons.swap_horiz_outlined,
                          size: 30,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _transation[index].assets,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    "PKR-" +
                                        _transation[index].price.toString(),
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(2, 5, 2, 0),
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Cash",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    _transation[index].date,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }));
  }

  contextBox( context) {
    return StatefulBuilder(builder: (context, setState) {
      return  Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            //  alignment: Alignment.topCenter,
            height: 220,
            width: double.infinity,
            margin: EdgeInsets.only(top: 20, bottom: 350, ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)

            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Export Transation", style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                SizedBox(height: 3),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Export transation as", style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                ListTile(
                  title: Text("Pdf"),
                  leading: Radio<int>(
                    value: 1,
                    groupValue: _value,
                    onChanged: ((value) {
                      setState(() {
                        setState(() {
                          _value=value as int;
                          print(_value);
                        });

                      });
                    }
                    ),
                    activeColor: Colors.green,
                    toggleable: true,
                  ),
                ),
                ListTile(
                  title: Text("Excel"),
                  leading: Radio<int>(
                    value: 2,
                    groupValue: _value,
                    onChanged: ((value) {
                      setState(() {
                        setState(() {
                          _value=value as int;
                          print(_value);
                        });

                      });

                    }
                    ),
                    activeColor: Colors.green,
                    toggleable: true,
                  ),
                ),
                 SizedBox(height: 10),
                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: TextButton(
                    child: Text("Export", style: TextStyle(color: Colors.white),),
                    onPressed: (){},
                  ),
                )
              ],
            ),


          ),
          Positioned(
              left: 10,
              right: 10,
              top: 0,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cancel", style: TextStyle(
                        color: Colors.white
                    ),),
                    Text("Export", style: TextStyle(
                        color: Colors.white
                    ),),


                  ],

                ),

              )
          )

        ],

      );
    });


  }

  DialogBox(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return  Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            //  alignment: Alignment.topCenter,
            height: 350,
            width: double.infinity,
            margin: EdgeInsets.only(top: 30, bottom: 200, ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)

            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Cash", style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                SizedBox(height: 3),

                ListTile(
                  title: Text("Income"),
                  leading: Radio<int>(
                    value: 1,
                    groupValue: _value,
                    onChanged: ((value) {
                      setState(() {
                        setState(() {
                          _value=value as int;
                          print(_value);
                        });

                      });
                    }
                    ),
                    activeColor: Colors.green,
                    toggleable: true,
                  ),
                ),
                ListTile(
                  title: Text("Saving"),
                  leading: Radio<int>(
                    value: 2,
                    groupValue: _value,
                    onChanged: ((value) {
                      setState(() {
                        setState(() {
                          _value=value as int;
                          print(_value);
                        });

                      });

                    }
                    ),
                    activeColor: Colors.green,
                    toggleable: true,
                  ),
                ),
                SizedBox(height: 10),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Date And Time",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    )
                ),
                SizedBox(height: 10),
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
                SizedBox(height: 10),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Category",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    )
                ),
                SizedBox(height: 10),
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
                SizedBox(height: 15),
                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: TextButton(
                    child: Text("Apply", style: TextStyle(color: Colors.white),),
                    onPressed: (){},
                  ),
                )
              ],
            ),


          ),
          Positioned(
              left: 10,
              right: 10,
              top: 5,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Filter", style: TextStyle(
                        color: Colors.white
                    ),),
                    Text("Clear filter", style: TextStyle(
                        color: Colors.white
                    ),),


                  ],

                ),

              )
          )

        ],

      );
    }
    );


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
}
