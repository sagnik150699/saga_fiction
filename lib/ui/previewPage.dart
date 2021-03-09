import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saga_fiction/services/variables.dart';

class PreviewPage extends StatefulWidget {
  @override
  _PreviewPageState createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  Variables variable = new Variables();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          // backgroundColor:  Color(0xffF4F4F4),
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            // backgroundColor: Color(0xffF4F4F4),
            backgroundColor: Colors.grey.shade200,
            elevation: 0,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.download_rounded,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    //Big Image
                    Material(
                      elevation: 10.0,
                      child: Container(
                        height: categoryHeight / 3,
                        width: categoryWidth / 2.6,
                        decoration: BoxDecoration(
                            color: Color(0xffBEC2CE),
                            border: Border.all(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        variable.text1("Desvendando\nPrincesas", 30.0, Colors.black,
                            FontWeight.normal),
                        SizedBox(
                          height: 10,
                        ),
                        //small stuffs
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            variable.text2(
                                "14.1K", 15.0, Colors.black, FontWeight.w200),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.bookmark_border,
                              color: Colors.grey,
                            ),
                            variable.text2(
                                "5.6K", 15.0, Colors.black, FontWeight.w200),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.download_outlined,
                              color: Colors.grey,
                            ),
                            variable.text2(
                                "3.9K", 15.0, Colors.black, FontWeight.w200),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //Flower books
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.flare_outlined),
                            variable.text1("Flower Books", 20.0, Colors.black,
                                FontWeight.normal),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Icon(
                              Icons.star_border_outlined,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                //INFo episodes REview
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Infor
                    SizedBox(
                      width: categoryWidth / 3.5,
                      child: MaterialButton(
                        height: categoryHeight / 15,
                        color: Colors.white,
                        onPressed: () {},
                        child: variable.text2(
                            "Infor", 20.0, Colors.grey, FontWeight.normal),
                        shape: RoundedRectangleBorder(
                          // side: BorderSide(
                          //  color: Colors.pinkAccent,
                          //   width: 1.0,
                          // ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    //Episodes
                    SizedBox(
                      width: categoryWidth / 3.4,
                      child: MaterialButton(
                        height: categoryHeight / 15,
                        color: Colors.white,
                        onPressed: () {},
                        child: variable.text2("Episodes", 20.0,
                            Colors.grey.shade500, FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    //Review
                    SizedBox(
                      width: categoryWidth / 3.5,
                      child: MaterialButton(
                        height: categoryHeight / 15,
                        color: Colors.white,
                        onPressed: () {},
                        child: variable.text2(
                            "Infor", 20.0, Colors.grey, FontWeight.normal),
                        shape: RoundedRectangleBorder(
                          // side: BorderSide(
                          //  color: Colors.pinkAccent,
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
                SizedBox(
                  height: 30,
                ),
                //Listing
                Container(
                  child: Column(
                    children: [
                      MaterialButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () async {
                          EpubViewer.setConfig(
                            themeColor: Theme.of(context).primaryColor,
                            identifier: "androidBook",
                            scrollDirection: EpubScrollDirection.VERTICAL,
                            allowSharing: true,
                            enableTts: true,
                          );
                          await EpubViewer.openAsset(
                            'assets/3.epub',
                          );
                        },
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff838589),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))
                                // shape:
                                ),
                            //color:Colors.grey,
                            height: 50, width: 50,
                          ),
                          title: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              variable.text1(
                                  "Preview", 17.0, Colors.black, FontWeight.normal),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  variable.text2(
                                      "14.1K", 15.0, Colors.black, FontWeight.w200),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.bookmark_border,
                                    color: Colors.grey,
                                  ),
                                  variable.text2(
                                      "5.6K", 15.0, Colors.black, FontWeight.w200),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.download_outlined,
                                    color: Colors.grey,
                                  ),
                                  variable.text2(
                                      "3.9K", 15.0, Colors.black, FontWeight.w200),
                                ],
                              ),
                            ],
                          ),
                          trailing: variable.text1("2:14", 15.0,
                              Colors.grey.shade500, FontWeight.normal),
                        ),
                      ),
                      Divider(
                        height: 10,
                        thickness: 2.0,
                        indent: 15.0,
                        endIndent: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff838589),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))
                                // shape:
                                ),
                            //color:Colors.grey,
                            height: 50, width: 50,
                          ),
                          title: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              variable.text1("Ep 1:Destiny", 17.0, Colors.black,
                                  FontWeight.normal),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  variable.text2(
                                      "14.1K", 15.0, Colors.black, FontWeight.w200),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.bookmark_border,
                                    color: Colors.grey,
                                  ),
                                  variable.text2(
                                      "5.6K", 15.0, Colors.black, FontWeight.w200),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.download_outlined,
                                    color: Colors.grey,
                                  ),
                                  variable.text2(
                                      "3.9K", 15.0, Colors.black, FontWeight.w200),
                                ],
                              ),
                            ],
                          ),
                          trailing: variable.text1("30:25", 15.0,
                              Colors.grey.shade500, FontWeight.normal),
                        ),
                      ),
                      Divider(
                        height: 10,
                        thickness: 2.0,
                        indent: 15.0,
                        endIndent: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff838589),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))
                                // shape:
                                ),
                            //color:Colors.grey,
                            height: 50, width: 50,
                          ),
                          title: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              variable.text1("Ep 2: Game of the Darkness", 17.0,
                                  Colors.black, FontWeight.normal),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  variable.text2(
                                      "14.1K", 15.0, Colors.black, FontWeight.w200),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.bookmark_border,
                                    color: Colors.grey,
                                  ),
                                  variable.text2(
                                      "5.6K", 15.0, Colors.black, FontWeight.w200),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.download_outlined,
                                    color: Colors.grey,
                                  ),
                                  variable.text2(
                                      "3.9K", 15.0, Colors.black, FontWeight.w200),
                                ],
                              ),
                            ],
                          ),
                          trailing: variable.text1("30:25", 15.0,
                              Colors.grey.shade500, FontWeight.normal),
                        ),
                      ),
                      Divider(
                        height: 10,
                        thickness: 2.0,
                        indent: 15.0,
                        endIndent: 15.0,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff838589),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))
                                // shape:
                                ),
                            //color:Colors.grey,
                            height: 50, width: 50,
                          ),
                          title: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              variable.text1("Ep 3:Andora Icelands", 17.0,
                                  Colors.black, FontWeight.normal),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  variable.text2(
                                      "14.1K", 15.0, Colors.black, FontWeight.w200),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.bookmark_border,
                                    color: Colors.grey,
                                  ),
                                  variable.text2(
                                      "5.6K", 15.0, Colors.black, FontWeight.w200),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.download_outlined,
                                    color: Colors.grey,
                                  ),
                                  variable.text2(
                                      "3.9K", 15.0, Colors.black, FontWeight.w200),
                                ],
                              ),
                            ],
                          ),
                          trailing: variable.text1("1:25:00", 15.0,
                              Colors.grey.shade500, FontWeight.normal),
                        ),
                      ),
                      Divider(
                        height: 10,
                        thickness: 2.0,
                        indent: 15.0,
                        endIndent: 15.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}
