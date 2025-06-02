import 'package:crednix/Home/homePage.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _controller.forward();

    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => homePage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B4D3C),
      body: Stack(
        children: [
          Positioned(
            top: -200,
            right: -250,
            child: Image.asset(
              'assets/Images/ssBack2.png',
              width: 700,
              height: 700,
              color: Colors.green.shade50,
            ),
          ),

          Positioned(
            bottom: -80,
            left: -60,
            child: Image.asset(
              'assets/Images/ssBack1.png',
              width: 300,
              height: 300,
              color: Colors.green.shade50,
            ),
          ),
          Center(
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Crednix",
                      style: TextStyle(
                        fontFamily: 'title',
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      " Smarter Payments, Seamless Credit",
                      style: TextStyle(
                        fontFamily: 'description',
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
