import 'package:crednix/Chart/chartPage.dart';
import 'package:crednix/Home/homePage.dart';
import 'package:crednix/Notifications/payNotification.dart';
import 'package:crednix/Profile/profilePage.dart';
import 'package:crednix/Scan/scanQR_page.dart';
import 'package:crednix/Settings/settingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class monthlyPage extends StatefulWidget {
  @override
  State<monthlyPage> createState() => _monthlyPageState();
}

class _monthlyPageState extends State<monthlyPage> {
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green.withOpacity(0.2),
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.green,
                                size: 35,
                              ),
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                Text(
                                  '\$5,440',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'pageHead',
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Income',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'pageHead',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 1,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.orange.withOpacity(0.2),
                              child: Icon(
                                Icons.arrow_drop_up,
                                color: Colors.orange,
                                size: 35,
                              ),
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                Text(
                                  '\$2,209',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontFamily: 'pageHead',
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Expense',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'pageHead',
                                    fontSize: 12,
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

                SizedBox(height: 24),

                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Statistic Overview",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'pageHead',
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "April 1, 2025 – April 30, 2025",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                              fontFamily: 'description',
                            ),
                          ),
                        ],
                      ),
                      DropdownButton<String>(
                        value: 'Monthly',
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
                              builder: (context) => chartPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),

                SizedBox(height: 250, child: _buildBarChart()),

                SizedBox(height: 30),

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

  Widget _buildBarChart() {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                const weeks = ['Week 1', 'Week 2', 'Week 3', 'Week 4'];
                return Text(
                  weeks[value.toInt()],
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'description',
                    fontSize: 12,
                  ),
                );
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                return Text(
                  '\$${value ~/ 1000}k',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'description',
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        barGroups: [
          _makeGroup(0, 1000, 400),
          _makeGroup(1, 3000, 1500),
          _makeGroup(2, 2500, 1700),
          _makeGroup(3, 4000, 600),
        ],
        gridData: FlGridData(drawHorizontalLine: true, drawVerticalLine: false),
        borderData: FlBorderData(show: false),
        barTouchData: BarTouchData(enabled: false),
      ),
    );
  }

  BarChartGroupData _makeGroup(int x, double income, double expense) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: income,
          color: Colors.green,
          width: 18,
          borderRadius: BorderRadius.circular(4),
        ),
        BarChartRodData(
          toY: expense,
          color: Colors.orange,
          width: 18,
          borderRadius: BorderRadius.circular(4),
        ),
      ],
    );
  }
}
