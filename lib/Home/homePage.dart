import 'package:crednix/Chart/chartPage.dart';
import 'package:crednix/Notifications/payNotification.dart';
import 'package:crednix/Profile/profilePage.dart';
import 'package:crednix/Settings/settingPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 14.0,
                      right: 20.0,
                      top: 40.0,
                      bottom: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Crednix",
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'title',
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => settingPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.settings,
                                size: 25,
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  right: 16.0,
                  left: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Andre,",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'pageHead',
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Your available balance",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'description',
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "\$15,901",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'pageHead',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade400,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 0.0,
                      right: 33.0,
                      left: 33.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 23.0),
                          child: Column(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.moneyBillTransfer,
                                size: 25,
                                color: Colors.white,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Transfer",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'description',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 1,
                          color: Colors.white.withOpacity(0.3),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 23.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.add_card,
                                size: 25,
                                color: Colors.white,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Top Up",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'description',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 1,
                          color: Colors.white.withOpacity(0.3),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 23.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.history,
                                size: 25,
                                color: Colors.white,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "History",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'description',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Payment List",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'pageHead',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                child: Container(
                  width: 390,
                  height: 210,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade100,
                                  ),
                                  height: 60,
                                  width: 60,
                                  child: Icon(
                                    Icons.electric_bolt,
                                    size: 25,
                                    color: Colors.amber,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Electricity",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'description',
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade100,
                                  ),
                                  height: 60,
                                  width: 60,
                                  child: Icon(
                                    Icons.wifi_outlined,
                                    size: 25,
                                    color: Colors.orange,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Internet",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'description',
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade100,
                                  ),
                                  height: 60,
                                  width: 60,
                                  child: Icon(
                                    FontAwesomeIcons.gift,
                                    size: 25,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Voucher",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'description',
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade100,
                                  ),
                                  height: 60,
                                  width: 60,
                                  child: Icon(
                                    Icons.local_hospital,
                                    size: 25,
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Assurance",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'description',
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 18),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade100,
                                  ),
                                  height: 60,
                                  width: 60,
                                  child: Icon(
                                    Icons.shopping_cart,
                                    size: 25,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Merchant",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'description',
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade100,
                                  ),
                                  height: 60,
                                  width: 60,
                                  child: Icon(
                                    Icons.mobile_friendly,
                                    size: 25,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Mob. Credit",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'description',
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade100,
                                  ),
                                  height: 60,
                                  width: 60,
                                  child: Icon(
                                    FontAwesomeIcons.moneyBillWave,
                                    size: 25,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Bill",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'description',
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.grey.shade100,
                                  ),
                                  height: 60,
                                  width: 60,
                                  child: Icon(
                                    Icons.more_horiz_outlined,
                                    size: 25,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "More",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontFamily: 'description',
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Promo & Discount",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'pageHead',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "See More",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'pageHead',
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.only(left: 26.0, top: 26.0),
                      height: 200,
                      width: 340,
                      decoration: BoxDecoration(
                        color: Color(0xFF013220),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "30% OFF",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'pageHead',
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Black Friday deal",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'pageHead',
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Get discount for every topup,\ntransfer and payment",
                                style: TextStyle(
                                  fontSize: 9,
                                  fontFamily: 'description',
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ],
                          ),
                          Positioned(right: 0, bottom: 0, child: _greenShape()),
                          Positioned(
                            right: 60,
                            top: 75,
                            child: CircleAvatar(
                              radius: 22,
                              backgroundColor: Color(0xFFFFE0B2),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 16,
                            child: Text(
                              "30%",
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'pageHead',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.only(left: 26.0, top: 26.0),
                      height: 200,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFE0B2),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Special Offer for\nToday's Top Up",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'pageHead',
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Get discount for every top up,\ntransfer and payment",
                                style: TextStyle(
                                  fontSize: 9,
                                  fontFamily: 'description',
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: _colorPatch2(),
                          ),
                          Positioned(right: 0, bottom: 0, child: _colorPatch()),
                          Positioned(
                            right: 40,
                            top: 160,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.orangeAccent.shade200,
                            ),
                          ),
                          Positioned(
                            right: -20,
                            top: 40,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.pink.shade100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFFFA726),
        shape: CircleBorder(),
        foregroundColor: Colors.orange,
        focusColor: Colors.orange,
        child: Icon(Icons.center_focus_strong, size: 30, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.home, size: 27),
                    color: Color(0xFF0B4D3C),
                    onPressed: () {},
                  ),
                  SizedBox(width: 30),
                  IconButton(
                    icon: Icon(
                      Icons.bar_chart,
                      size: 27,
                      color: Colors.grey.shade800,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => chartPage()),
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      size: 27,
                      color: Colors.grey.shade800,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => payNotification(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 30),
                  IconButton(
                    icon: Icon(
                      Icons.person,
                      size: 27,
                      color: Colors.grey.shade800,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => profilePage()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _greenShape() {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xFF5BBD6E),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(32)),
      ),
    );
  }

  Widget _colorPatch() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xFF5BBD6E),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
      ),
    );
  }

  Widget _colorPatch2() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFF013220),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
      ),
    );
  }
}
