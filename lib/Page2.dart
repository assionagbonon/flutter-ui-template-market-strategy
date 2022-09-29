import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template_market_strategy/Page3.dart';
import 'package:template_market_strategy/app_colors.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);

  List<Map> messages = [
    {'text1': 'Document verification', 'text2': '3 min ago'},
    {'text1': 'Newbie onboarding', 'text2': '5 days ago'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: MyColors.primary.shade100,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: MyColors.primaryLight.shade400),
                          ),
                          Text(
                            "Carolina Terner",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: MyColors.primaryLight.shade900),
                          ),
                        ],
                      ),

                      Container(
                        height: 60,width: 60,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/images/image.png'),
                            ),
                            Positioned(
                              bottom: 4,
                              left: 0,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  color: MyColors.primaryLight.shade900,
                                  border: Border.all(color: Colors.white, width: 2),
                                ),
                                child: Center(child: Text("2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 10),)),
                              ),
                            ),

                          ],
                        ),
                      ) ,
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Try to find...",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      isDense: true,
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25, left: 25),
                      child: Text(
                        "Task-based\nexplanation process",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: MyColors.primaryLight.shade900),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          DashboradGridItem(
                              text1: "Add task",
                              text2: "Creatives\nfor branging",
                              isActif: true),
                          DashboradGridItem(
                              text1: "Review",
                              text2: "Verification\nprocess with team",
                              isActif: false),
                          DashboradGridItem(
                              text1: "Review",
                              text2: "Verification\nprocess with team",
                              isActif: false),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25, left: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Flows list",
                            style: TextStyle(
                                fontSize: 24,
                                color: MyColors.primaryLight.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                                fontSize: 12,
                                color: MyColors.primaryLight.shade400),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: ListView.separated(
                        separatorBuilder: (context, position) {
                          return Divider(
                            color: MyColors.primaryLight.shade400,
                            height: 0.5,
                          );
                        },
                        itemBuilder: (BuildContext, index) {
                          return DashboardListItem(
                              text1: messages[index]['text1'],
                              text2: messages[index]['text2'],
                              text3: messages[index]['text3']);
                        },
                        itemCount: messages.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.all(5),
                        scrollDirection: Axis.vertical,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: MyColors.primary.shade100,
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
        onTap: (currentIndex){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page3()),
          );
        },
      ),
    );
  }
}

class DashboardListItem extends StatelessWidget {
  String? text1, text2, text3;

  DashboardListItem(
      {Key? key, required this.text1, required this.text2, this.text3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 15, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$text1",
                  style: TextStyle(
                      fontSize: 17,
                      color: MyColors.primaryLight.shade900,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "$text2",
                  style: TextStyle(
                      fontSize: 12, color: MyColors.primaryLight.shade400),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: MyColors.primary.shade900,
            ),
            child: Icon(
              CupertinoIcons.plus,
              color: MyColors.primaryLight.shade900,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class DashboradGridItem extends StatelessWidget {
  String? text1 = "", text2 = "";
  bool isActif = false;

  DashboradGridItem(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.isActif})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: isActif ? null : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(18)),
            border: isActif
                ? Border.all(color: MyColors.primary.shade400, width: 1)
                : Border.all(color: Colors.white, width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color:
                    isActif ? MyColors.primary.shade900 : MyColors.grey.shade50,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Text(
                "$text1",
                style: TextStyle(
                    fontSize: 11,
                    color: MyColors.primaryLight.shade900,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "$text2",
              style: TextStyle(
                  fontSize: 12,
                  color: MyColors.primaryLight.shade400,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
