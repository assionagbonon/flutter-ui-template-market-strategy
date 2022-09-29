// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'package:template_market_strategy/Page2.dart';
import 'package:template_market_strategy/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: MyColors.primary.shade900,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                      ),
                      child: Icon(
                        CupertinoIcons.rectangle_grid_2x2_fill,
                        color: MyColors.primaryLight.shade900,
                        size: 24,
                      ),
                    ),
                    Icon(
                      Icons.density_medium_rounded,
                      color: MyColors.primaryLight.shade900,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Market",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: MyColors.primaryLight.shade900),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 60,
                            width: 60,
                            child: ClipPolygon(
                              sides: 6,
                              borderRadius: 15.0, // Default 0.0 degrees
                              rotate: 60.0, // Default 0.0 degrees
                              boxShadows: [
                                PolygonBoxShadow(color: Colors.grey, elevation: 1.0),
                                PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
                              ],
                              child: Container(
                                  color: Colors.black,
                                child: Icon(
                                  CupertinoIcons.arrow_swap,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                          )


                        ],
                      ),

                      Text(
                        "your growth strategy",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: MyColors.primaryLight.shade900,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 50,),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipPolygon(
                              sides: 6,
                              borderRadius: 15.0, // Default 0.0 degrees
                              rotate: 60.0, // Default 0.0 degrees

                              child: Image(image: AssetImage("assets/images/image.png"),fit: BoxFit.cover,
                              ),

                            ),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipPolygon(
                              sides: 6,
                              borderRadius: 15.0, // Default 0.0 degrees
                              rotate: 60.0, // Default 0.0 degrees
                              child: Container(

                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 35,),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("50",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: MyColors.primaryLight.shade900),),
                                        SizedBox(width: 5,),
                                        Icon(
                                          CupertinoIcons.arrow_up_right,
                                          color: MyColors.primaryLight.shade900,
                                          size: 13,
                                        ),
                                      ],
                                    ),
                                    Text("Last week",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10,color: MyColors.primaryLight.shade400),)
                                  ],
                                ),
                                ),
                              ),
                            ),

                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipPolygon(
                              sides: 6,
                              borderRadius: 15.0, // Default 0.0 degrees
                              rotate: 60.0, // Default 0.0 degrees
                              child: Container(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipPolygon(
                              sides: 6,
                              borderRadius: 15.0, // Default 0.0 degrees
                              rotate: 60.0, // Default 0.0 degrees

                              child: Image(image: AssetImage("assets/images/image.png"),fit: BoxFit.cover,
                              ),

                            ),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipPolygon(
                              sides: 6,
                              borderRadius: 15.0, // Default 0.0 degrees
                              rotate: 60.0, // Default 0.0 degrees
                              child: Container(
                                color: Colors.white,
                              ),
                            ),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipPolygon(
                              sides: 6,
                              borderRadius: 15.0, // Default 0.0 degrees
                              rotate: 60.0, // Default 0.0 degrees
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 30,),
                                    Text("83%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: MyColors.primaryLight.shade900),),
                                    SizedBox(width: 5,),
                                    Image(image: AssetImage("assets/images/line.png"),height: 40),
                                   ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipPolygon(
                              sides: 6,
                              borderRadius: 15.0, // Default 0.0 degrees
                              rotate: 60.0, // Default 0.0 degrees

                              child: Image(image: AssetImage("assets/images/image.png"),fit: BoxFit.cover,
                              ),

                            ),
                          ),


                        ],
                      ),



                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                //La redirection sur la page d'accueil
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: MyColors.primaryLight.shade900,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 20,),
                    Text(
                      "Get started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Icon(
                        CupertinoIcons.arrow_right,
                        color: MyColors.primaryLight.shade900,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,)
          ],
        ),
      ),
    );
  }
}
