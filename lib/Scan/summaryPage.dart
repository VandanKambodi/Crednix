import 'package:crednix/Home/homePage.dart';
import 'package:crednix/Settings/settingPage.dart';
import 'package:flutter/material.dart';
import 'confirmPassword_Page.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                              "Summary Transaction",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'title',
                                color: Colors.white,
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
                                color: Colors.white30,
                                width: 1,
                              ),
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
      backgroundColor: const Color(0xFF0B4D3C),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF0B4D3C),
              ),
              height: 100,
              width: 100,
              child: Image.asset('assets/Images/starbucks.png'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Starbucks Coffee',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'pageHead',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Payment on May 31, 2025',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'description',
                color: Colors.amber,
              ),
            ),
            const SizedBox(height: 60),
            const Text(
              '\$15.00',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'pageHead',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 390,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green.shade50,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.info),
                    SizedBox(width: 10),
                    Text(
                      "Payment fee \$2 has been applied",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'pageHead',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),
            Container(
              height: 280,
              padding: const EdgeInsets.only(
                right: 16,
                left: 16,
                bottom: 16,
                top: 8,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
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
                      thickness: 3,
                      color: Colors.grey.shade300,
                      indent: 155,
                      endIndent: 155,
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    child: Text(
                      "Choose Cards",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'pageHead',
                        color: Colors.black,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.shade100,
                    ),
                    height: 80,
                    child: Center(
                      child: ListTile(
                        leading: const Icon(Icons.credit_card),
                        title: const Text(
                          "Wally Virtual Card",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'pageHead',
                            color: Colors.black,
                          ),
                        ),
                        subtitle: const Text(
                          "0318-1608-2105",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'description',
                            color: Colors.grey,
                          ),
                        ),
                        trailing: const Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ConfirmPasswordPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Proceed to Pay",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'pageHead',
                          color: Colors.white,
                          height: 3.5,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
