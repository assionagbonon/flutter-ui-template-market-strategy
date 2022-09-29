import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_border.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'package:template_market_strategy/app_colors.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 60, 25, 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: MyColors.primaryLight.shade900,
                  size: 24,
                ),
                Text(
                  "Overview",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: MyColors.primaryLight.shade900),
                ),
                Icon(
                  Icons.more_horiz_rounded,
                  color: MyColors.primaryLight.shade900,
                  size: 24,
                )
              ],
            ),

            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(40),
                  decoration: ShapeDecoration(
                      shape: PolygonBorder(
                        sides: 6,
                        borderRadius: 20.0, // Default 0.0 degrees
                        rotate: 60.0, // Default 0.0 degrees
                        border: BorderSide(color: MyColors.primaryLight
                            .shade100), // Default BorderSide.none
                      )
                  ),
                  child: Container(
                    padding: EdgeInsets.all(40),
                    decoration: ShapeDecoration(
                        shape: PolygonBorder(
                          sides: 6,
                          borderRadius: 20.0, // Default 0.0 degrees
                          rotate: 60.0, // Default 0.0 degrees
                          border: BorderSide(color: MyColors.primaryLight
                              .shade100), // Default BorderSide.none
                        )
                    ),
                    child: ClipPolygon(
                      sides: 6,
                      borderRadius: 20.0, // Default 0.0 degrees
                      rotate: 60.0, // Default 0.0 degrees

                      child: Image(image: AssetImage("assets/images/image.png"),
                        fit: BoxFit.cover,
                      ),

                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 40,
                  child: Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: MyColors.primaryLight.shade900,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Icon(
                      Icons.add_chart,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 20,
                  left: 40,
                  child: Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: MyColors.primaryLight.shade900,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Icon(
                      Icons.people,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),

                Positioned(
                  top: 0,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: MyColors.primary.shade900,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Perfomance", style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: MyColors.primaryLight.shade900),),
                        SizedBox(height: 9,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              height: 30,
                              width: 4,
                              color: Colors.black12,
                              child: Container(
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(width: 9,),
                            Container(
                              padding: EdgeInsets.only(top: 2),
                              height: 30,
                              width: 4,
                              color: Colors.black12,
                              child: Container(
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(width: 9,),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              height: 30,
                              width: 4,
                              color: Colors.black12,
                              child: Container(
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(width: 9,),
                            Container(
                              padding: EdgeInsets.only(top: 15),
                              height: 30,
                              width: 4,
                              color: Colors.black12,
                              child: Container(
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(width: 9,),
                            Container(
                              padding: EdgeInsets.only(top: 1),
                              height: 30,
                              width: 4,
                              color: Colors.black12,
                              child: Container(
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(width: 9,),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              height: 30,
                              width: 4,
                              color: Colors.black12,
                              child: Container(
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(width: 9,),
                            Container(
                              padding: EdgeInsets.only(top: 8),
                              height: 30,
                              width: 4,
                              color: Colors.black12,
                              child: Container(
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(width: 9,),
                            Container(
                              padding: EdgeInsets.only(top: 8),
                              height: 30,
                              width: 4,
                              color: Colors.black12,
                              child: Container(
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  right: 20,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: MyColors.primary.shade900,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("23", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: MyColors.primaryLight.shade900),),
                            SizedBox(width: 5,),
                            Icon(
                              CupertinoIcons.arrow_up_right,
                              color: MyColors.primaryLight.shade900,
                              size: 14,
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text("Better results", style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: MyColors.primaryLight.shade400),)

                      ],
                    ),
                  ),
                ),
              ],
            ),


            Container(
              padding: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: MyColors.primaryLight.shade900,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                          Text(
                            "Great result so far!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Do you want do see full history\nor send the message to this member?",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 30,
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: MyColors.primary.shade900,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Icon(
                        CupertinoIcons.star_fill,
                        color: MyColors.primaryLight.shade900,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_alt_fill),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.graph_circle),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: '',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: MyColors.primaryLight.shade900,
        onTap: null,
      ),
    );
  }
}
