import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saga_fiction/ui/previewPage.dart';

import '../services/variables.dart';

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
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 30.0,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: ListView(
            children: [
              Column(
                children: [
                  //Favourite Image Share
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFD4B86),
                          radius: 25.0,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
// Image
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff838589),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))
                              // shape:
                              ),
                          height: categoryHeight / 4,
                          width: categoryWidth / 2.5,
                        ),

                        IconButton(
                            icon: Icon(
                              Icons.share_outlined,
                              size: 40.0,
                              color: Colors.grey,
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  //The Camp
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: variable.text2("The Camp(Chateau Book", 25.0,
                        Colors.black, FontWeight.normal),
                  ),
                  SizedBox(height: 20.0),

                  //By John
                  variable.text2(
                      "By John", 20.0, Colors.black, FontWeight.w200),
                  SizedBox(height: 20.0),

                  Stack(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 30,),

                            //Summary plus text
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  variable.text2(
                                      "Summery", 25.0, Colors.black, FontWeight.normal),
                                  SizedBox(
                                    height: 20,
                                  ),
                              Padding(
                                padding: const EdgeInsets.only(left:30.0),
                                child: variable.text1(
                                    "A New York Times and USA Today Bestselling Author,\n "
                                        "Penelope Sky is known for her dark romance that\n\n"
                                        "makes you fall for her characters.... no matter how dark\n"
                                        "they seem. Her books are beling translated into several\n"
                                        "languages around the world, and she's sold more",
                                    17.0,
                                    Colors.grey,
                                    FontWeight.normal),
                              ),
                                  SizedBox(height: 50,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //Buy Now
                            Container(
                              width: categoryWidth / 3,
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PreviewPage()),
                                  );
                                },
                                child: variable.text2(
                                    "BUY NOW", 20.0, Colors.white, FontWeight.normal),
                                height: categoryHeight / 15,
                                color: Color(0xff0C0D34),
                                shape: RoundedRectangleBorder(
                                  // side: BorderSide(
                                  //   color: Colors.pinkAccent,
                                  //   width: 1.0,
                                  // ),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0)),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            //Bookmark
                            Container(
                              width: categoryWidth / 3,
                              child: MaterialButton(
                                onPressed: () {},
                                child: variable.text2("Bookmark", 20.0, Colors.white,
                                    FontWeight.normal),
                                height: categoryHeight / 15,
                                color: Color(0xff0C0D34),
                                shape: RoundedRectangleBorder(
                                  // side: BorderSide(
                                  //   color: Colors.pinkAccent,
                                  //   width: 1.0,
                                  // ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
