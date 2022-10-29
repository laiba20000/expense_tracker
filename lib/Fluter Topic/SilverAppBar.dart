import 'package:flutter/material.dart';


class SilverApp extends StatefulWidget {
  const SilverApp({Key? key}) : super(key: key);

  @override
  _SilverAppState createState() => _SilverAppState();
}

class _SilverAppState extends State<SilverApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepPurple[300],
            expandedHeight: 200,
           
           /* floating: true,
            pinned: true,
            snap: true,*/
            pinned: true,
            stretch: true,
         flexibleSpace: FlexibleSpaceBar(
           background: Container(
             height: 200,
             color: Colors.red,
           ),
           stretchModes: [
             StretchMode.zoomBackground,
           ],
         ),

            leading: Icon(Icons.menu),
            title: Text("Silver"),
          ),
            SliverToBoxAdapter(

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                 color: Colors.deepPurple[200],
                  height: 400,
                ),

              ),
            ),
            SliverToBoxAdapter(

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.deepPurple[200],
                  height: 400,
                ),

              ),
            ),
            SliverToBoxAdapter(

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.deepPurple[200],
                  height: 400,
                ),

              ),
            ),
          ],

      ),
    );
  }
}
