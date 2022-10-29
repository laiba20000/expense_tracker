import 'package:expense_tracker/pages/Edit_Asset.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/asset_model.dart';
class Assets extends StatefulWidget {
  const Assets({Key? key}) : super(key: key);

  @override
  _AssetsState createState() => _AssetsState();
}

class _AssetsState extends State<Assets> {


  List<AssetsModel> _assets =[
    AssetsModel("Office Furniture", "OFFICE CHAIR AND FURNITURE",28,"https://tse1.mm.bing.net/th?id=OIP.4ZG1x3UyeS5hIEYAC0hEewHaHa&pid=Api&P=0"),
    AssetsModel("Office Furniture", "OFFICE CHAIR AND FURNITURE",28,"https://tse1.mm.bing.net/th?id=OIP.4ZG1x3UyeS5hIEYAC0hEewHaHa&pid=Api&P=0"),
    AssetsModel("Office Furniture", "OFFICE CHAIR AND FURNITURE",28,"https://tse1.mm.bing.net/th?id=OIP.4ZG1x3UyeS5hIEYAC0hEewHaHa&pid=Api&P=0"),
    AssetsModel("Office Furniture", "OFFICE CHAIR AND FURNITURE",28,"https://tse1.mm.bing.net/th?id=OIP.4ZG1x3UyeS5hIEYAC0hEewHaHa&pid=Api&P=0"),
    AssetsModel("Office Furniture", "OFFICE CHAIR AND FURNITURE",28,"https://tse1.mm.bing.net/th?id=OIP.4ZG1x3UyeS5hIEYAC0hEewHaHa&pid=Api&P=0"),
    AssetsModel("Office Furniture", "OFFICE CHAIR AND FURNITURE",28,"https://tse1.mm.bing.net/th?id=OIP.4ZG1x3UyeS5hIEYAC0hEewHaHa&pid=Api&P=0"),
    AssetsModel("Office Furniture", "OFFICE CHAIR AND FURNITURE",28,"https://tse1.mm.bing.net/th?id=OIP.4ZG1x3UyeS5hIEYAC0hEewHaHa&pid=Api&P=0"),
    AssetsModel("Office Furniture", "OFFICE CHAIR AND FURNITURE",28,"https://tse1.mm.bing.net/th?id=OIP.4ZG1x3UyeS5hIEYAC0hEewHaHa&pid=Api&P=0"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        leadingWidth: 20,
        backgroundColor: Colors.green,
        title: Center(child: Text("Assets", style: TextStyle(color: Colors.white),)),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.arrow_back,color: Colors.white,),
        ),
      ),
        body:

      ListView.builder(
          itemCount: _assets.length,
          itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.only(right: 5,top: 10, bottom: 10, left: 100),
              height: 120,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: PopupMenuButton(
                        child: Icon(Icons.more_vert,
                          
                        ),
                        itemBuilder: (context){
                          return [
                            PopupMenuItem(child:
                            ListTile(
                              onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (_)=>EditAsset()));
                              },
                              trailing: Icon(Icons.edit),
                              title: Text("Edit"),
                            )
                            ),
                            PopupMenuItem(child: ListTile(
                              trailing: Icon(Icons.delete),
                              title: Text("Delete"),
                            ))
                          ];
                        }
                      )
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(_assets[index].title,style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),)),
                        SizedBox(height: 2),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(_assets[index].subtitle,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                            ),)),
                      ],
                    ),
                  ),



                  Align(
                      alignment: Alignment.bottomRight,
                      child: Text("PKR "+_assets[index].price.toString(),
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18
                        ),
                      )
                  ),

                ],

              ),
            ),

            Positioned(
              top: 10,
              bottom: 6,
              left: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)
                ),
                child: Image(
                  image: NetworkImage(_assets[index].assetImg,

                  ),
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],

        );
      }
      )

 );
  }
}
