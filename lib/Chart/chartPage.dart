import 'package:crednix/Chart/monthlyPage.dart';
import 'package:crednix/Home/homePage.dart';
import 'package:crednix/Notifications/payNotification.dart';
import 'package:crednix/Profile/profilePage.dart';
import 'package:crednix/Scan/scanQR_page.dart';
import 'package:crednix/Settings/settingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class chartPage extends StatefulWidget {
  @override
  State<chartPage> createState() => _chartPageState();
}

class _chartPageState extends State<chartPage> {
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
            color: Colors.white,
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
                                color: Colors.grey.shade300,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.chevron_left,
                                size: 25,
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Statistic",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'title',
                                color: Colors.black,
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
                                width: 1,
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
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFF0B4D3C),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Income',
                              style: TextStyle(
                                color: Colors.white70,
                                fontFamily: 'pageHead',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '\$5,440',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'pageHead',
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 1,
                          color: Colors.white.withOpacity(0.3),
                        ),
                        Column(
                          children: [
                            Text(
                              'Expense',
                              style: TextStyle(
                                color: Colors.white70,
                                fontFamily: 'pageHead',
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '\$2,209',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'pageHead',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton<String>(
                        value: 'Weekly',
                        borderRadius: BorderRadius.circular(10),
                        focusColor: Colors.white,
                        dropdownColor: Colors.white,
                        items:
                            ['Weekly', 'Monthly']
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                        style: TextStyle(
                          fontFamily: 'pageHead',
                          color: Colors.black,
                        ),
                        onChanged: (_) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => monthlyPage(),
                            ),
                          );
                        },
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.arrowDown,
                            color: Colors.green,
                            size: 14,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "Income",
                            style: TextStyle(fontFamily: 'pageHead'),
                          ),
                          SizedBox(width: 12),
                          Icon(
                            FontAwesomeIcons.arrowUp,
                            color: Colors.orange,
                            size: 14,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "Expense",
                            style: TextStyle(fontFamily: 'pageHead'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),

                SizedBox(
                  height: 150,
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      maxY: 10,
                      barTouchData: BarTouchData(enabled: false),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(),
                        rightTitles: AxisTitles(),
                        topTitles: AxisTitles(),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, _) {
                              const days = [
                                'Mon',
                                'Tue',
                                'Wed',
                                'Thu',
                                'Fri',
                                'Sat',
                                'Sun',
                              ];
                              return Text(
                                days[value.toInt()],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'description',
                                  color: Colors.grey,
                                ),
                              );
                            },
                            reservedSize: 28,
                          ),
                        ),
                      ),
                      gridData: FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                      barGroups: List.generate(7, (i) {
                        return BarChartGroupData(
                          x: i,
                          barRods: [
                            BarChartRodData(
                              toY: (i + 4).toDouble(),
                              color: Colors.green,
                              width: 8,
                            ),
                            BarChartRodData(
                              toY: (10 - i).toDouble(),
                              color: Colors.orange,
                              width: 8,
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                Container(
                  height: 60,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            "Income",
                            style: TextStyle(
                              fontFamily: 'pageHead',
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Center(
                            child: Text(
                              "Expenses",
                              style: TextStyle(
                                fontFamily: 'pageHead',
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Category Chart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'pageHead',
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Last 7 days expenses",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontFamily: 'description',
                      fontSize: 12,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "-\$312.00",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'pageHead',
                    ),
                  ),
                ),
                SizedBox(height: 16),

                SizedBox(
                  height: 170,
                  width: 170,
                  child: PieChart(
                    PieChartData(
                      startDegreeOffset: 270,
                      sectionsSpace: 0,
                      centerSpaceRadius: 50,
                      sections: [
                        PieChartSectionData(
                          value: 20,
                          color: Colors.orange,
                          radius: 25,
                          showTitle: false,
                        ),
                        PieChartSectionData(
                          value: 20,
                          color: Colors.green,
                          radius: 25,
                          showTitle: false,
                        ),
                        PieChartSectionData(
                          value: 60,
                          color: Color(0xFF0B4D3C),
                          radius: 25,
                          showTitle: false,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildLegendDot(Colors.orange, "Transportation"),
                      SizedBox(width: 12),
                      _buildLegendDot(Colors.green, "Shopping"),
                      SizedBox(width: 12),
                      _buildLegendDot(Color(0xFF0B4D3C), "Coffee"),
                    ],
                  ),
                ),
                SizedBox(height: 18),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recent Expenses",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'pageHead',
                    ),
                  ),
                ),
                SizedBox(height: 12),

                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF0B4D3C),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/Images/starbucks.png",
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                  title: Text(
                    "Starbucks Coffee",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontFamily: 'pageHead',
                    ),
                  ),
                  subtitle: Text(
                    "May 2, 2025  •  3:09 PM",

                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontFamily: 'description',
                      fontSize: 10,
                    ),
                  ),
                  trailing: Text(
                    "-\$156.00",
                    style: TextStyle(
                      fontFamily: 'pageHead',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Divider(thickness: 0.5, indent: 5, endIndent: 5),
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/Images/netflix.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  title: Text(
                    "Netflix Subscription",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontFamily: 'pageHead',
                    ),
                  ),
                  subtitle: Text(
                    "May 11, 2025  •  10:49 AM",

                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontFamily: 'description',
                      fontSize: 10,
                    ),
                  ),
                  trailing: Text(
                    "-\$87.00",
                    style: TextStyle(
                      fontFamily: 'pageHead',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Divider(thickness: 0.5, indent: 5, endIndent: 5),
              ],
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScanQRPage()),
          );
        },
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
                    color: Colors.grey.shade800,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homePage()),
                      );
                    },
                  ),
                  SizedBox(width: 30),
                  IconButton(
                    icon: Icon(
                      Icons.bar_chart,
                      size: 27,
                      color: Color(0xFF0B4D3C),
                    ),
                    onPressed: () {},
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

  Widget _buildLegendDot(Color color, String label) {
    return Row(
      children: [
        Icon(Icons.circle, size: 8, color: color),
        SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 11,
            fontWeight: FontWeight.bold,
            fontFamily: 'description',
          ),
        ),
      ],
    );
  }
}
