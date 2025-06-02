import 'package:crednix/Home/homePage.dart';
import 'package:crednix/Scan/summaryPage.dart';
import 'package:flutter/material.dart';
import 'paymentSuccess_page.dart';

class ConfirmPasswordPage extends StatelessWidget {
  const ConfirmPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SummaryPage(),
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
                        SizedBox(width: 42),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Confirm Password",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'title',
                                color: Colors.black,
                              ),
                            ),
                          ],
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

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Please input your password to continue payment",
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'pageHead',
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 25),
            TextField(
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'description',
                fontSize: 12,
              ),
              controller: controller,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'description',
                  color: Colors.grey,
                ),
              ),

              cursorColor: Colors.green,
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Must be at least 8 characters.",
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'pageHead',
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 45),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PaymentSuccessPage(),
                    ),
                    (route) => false,
                  );
                },
                child: const Text(
                  "Confirm Password",
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
    );
  }
}
