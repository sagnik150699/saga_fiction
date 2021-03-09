import 'package:flutter/material.dart';

import 'services/variables.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Variables variable = new Variables();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 30.0,
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            //Favourite Image Share
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffFD4B86),
                    radius: 25.0,
                    child: Icon(Icons.favorite,color: Colors.white,size: 40.0,),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color:Color(0xff838589) ,
                     borderRadius: BorderRadius.all(Radius.circular(20.0))

                     // shape:
                    ),
                    height: categoryHeight/4,width: categoryWidth/2.5,),

                  IconButton(icon: Icon(Icons.share_outlined,size: 40.0, color: Colors.grey,),
                      onPressed: (){}),
                ],
              ),
            ),
            SizedBox(height:20.0),
            //The Camp
            variable.text2("The Camp(Chateau Book", 30.0, Colors.black, FontWeight.normal)
          ],
        ),
      ),
    );
  }
}
