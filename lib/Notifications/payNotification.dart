import 'package:crednix/Home/homePage.dart';
import 'package:flutter/material.dart';

class payNotification extends StatefulWidget {
  @override
  State<payNotification> createState() => _payNotificationState();
}

class _payNotificationState extends State<payNotification> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor:
              Colors
                  .transparent, // Make AppBar transparent to show your custom background
          elevation: 0,
          flexibleSpace: Container(
            color: Color(0xFF0B4D3C),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 40.0,
                      bottom: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => homePage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white30,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.chevron_left,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Notification",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'title',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white30, width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.settings,
                              size: 25,
                              color: Colors.white,
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
      backgroundColor: Color(0xFF0B4D3C),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              width: double.infinity,
              height: 1230,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 8.0,
                        left: 8.0,
                        top: 0.0,
                        bottom: 8.0,
                      ),
                      child: Divider(
                        thickness: 4,
                        color: Colors.grey.shade300,
                        indent: 160,
                        endIndent: 160,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TODAY",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'pageHead',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Mark as read",
                            style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'description',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        width: 390,
                        height: 105,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 8.0,
                            left: 20.0,
                            top: 8.0,
                            bottom: 8.0,
                          ),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.green.shade400,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                width: 50,
                                height: 50,
                                child: Center(
                                  child: Icon(
                                    Icons.discount_outlined,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cashback 50%",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'pageHead',
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "Get 50% cashback for the next top up",
                                      style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontFamily: 'description',
                                        fontSize: 10,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Row(
                                      children: [
                                        Text(
                                          "Top up now",
                                          style: TextStyle(
                                            color: Colors.green.shade700,
                                            fontFamily: 'pageHead',
                                            fontSize: 10,
                                          ),
                                        ),
                                        Icon(
                                          Icons.chevron_right,
                                          color: Colors.green.shade700,
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
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "YESTERDAY",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'pageHead',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.calendar_month,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.orange.shade300,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Daily Cashback",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "8:00 AM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Promo",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Center(
                                        child: Text(
                                          "BLCK10",
                                          style: TextStyle(
                                            fontSize: 9,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF2E8C76),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Use BLCK10 Promo Code",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "3:40 PM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Promo",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.percent,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.pink.shade200,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cyber Monday Deal",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "10:39 AM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Promo",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.credit_score,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade800,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$250 top up added",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "6:10 PM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Info",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "LAST 7 DAY",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'pageHead',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Center(
                                        child: Text(
                                          "NOV10",
                                          style: TextStyle(
                                            fontSize: 9,
                                            color: Colors.grey.shade800,
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.orange.shade100,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Use NOV10 Promo Code",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "3:40 PM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Promo",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.credit_score,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade500,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$200 top up added",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "8:35 AM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Info",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Center(
                                        child: Text(
                                          "AB42",
                                          style: TextStyle(
                                            fontSize: 9,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.red.shade300,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Use AB42 Promo Code",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "8:45 PM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Promo",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.percent,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.cyan.shade400,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "IPL Deal",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "6:40 PM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Promo",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "LAST MONTH",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'pageHead',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.calendar_month,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade400,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Montly Cashback",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "3:50 PM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Promo",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Center(
                                        child: Text(
                                          "ABC30",
                                          style: TextStyle(
                                            fontSize: 9,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.purple.shade200,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Use ABC30 Promo Code",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "8:30 PM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Promo",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.credit_score,
                                        color: Colors.white,
                                      ),

                                      decoration: BoxDecoration(
                                        color: Colors.green.shade800,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$500 top up added",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "8:00 AM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Info",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.percent,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.red.shade300,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "US Super Deal",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'description',
                                            fontSize: 13,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              "3:32 PM",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'description',
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      width: 60,
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Promo",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'description',
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                            SizedBox(height: 15),
                          ],
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
    );
  }
}
