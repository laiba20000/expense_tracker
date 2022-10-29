import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/all_bank.dart';
import 'add_bank.dart';
class AllBank extends StatefulWidget {
  const AllBank({Key? key}) : super(key: key);

  @override
  _AllBankState createState() => _AllBankState();
}

class _AllBankState extends State<AllBank> {
  List<AllBanks> banks=[
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),
    AllBanks("All Habib Limited","https://tse1.mm.bing.net/th?id=OIP.glsN0qxOrKSofVQl4_5pSQAAAA&pid=Api&P=0"),

  ];

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
      body:Column(

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Wrap(
             children: [Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green.shade300
                  ),
                  borderRadius: BorderRadius.circular(6)
                ),
                child: TextFormField(

                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.green.shade900),
                    prefixIcon: Icon(Icons.search, color: Colors.green.shade900,),
                    hoverColor: Colors.green,
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
      ]
            ),
          ),

          Expanded(
            child: ListView.builder(
                itemCount: banks.length,
                itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Container(

                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.green.shade100
                      )
                    )
                  ),
                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> AddBank()));

                    },
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        banks[index].ImageUrl
                      ),

                    ),
                    title: Text("Habib Bank Limited"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              );


            }),
          )
        ],
      )

    );


  }
}
