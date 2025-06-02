import 'package:crednix/Home/homePage.dart';
import 'package:crednix/Scan/confirmPassword_Page.dart';
import 'package:flutter/material.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B4D3C),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.check_circle, color: Colors.orange, size: 120.0),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Payment Success",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'pageHead',
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            SizedBox(height: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Starbucks Coffee",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontFamily: 'pageHead',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Total Payment",
                  style: TextStyle(
                    color: Colors.grey.shade100,
                    fontFamily: 'description',
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            SizedBox(height: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "\$15.00",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'pageHead',
                    fontSize: 28,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                left: 8.0,
                bottom: 8.0,
                top: 0.0,
              ),
              child: Divider(
                color: Colors.grey.shade400,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => homePage()),
                    (route) => false,
                  );
                },
                child: const Text(
                  "Done",
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
