import 'package:crednix/Notifications/payNotification.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class settingPage extends StatefulWidget {
  @override
  State<settingPage> createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.only(bottom: 12.0, left: 0.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 0.0, left: 22.0),
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'title',
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                  left: 25.0,
                  top: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: Colors.blue.shade600,
                      size: 25,
                    ),
                    SizedBox(width: 14),
                    Text(
                      "Personal info",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'pageHead',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                  left: 25.0,
                  top: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.notifications_none,
                      color: Colors.blue.shade600,
                      size: 25,
                    ),
                    SizedBox(width: 14),
                    Text(
                      "Notifications & emails",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'pageHead',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                  left: 25.0,
                  top: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.privacy_tip_outlined,
                      color: Colors.blue.shade600,
                      size: 25,
                    ),
                    SizedBox(width: 14),
                    Text(
                      "Privacy & security",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'pageHead',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 0.0,
                  vertical: 0.0,
                ),
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 0,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                  left: 25.0,
                  top: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.blue.shade600,
                      size: 25,
                    ),
                    SizedBox(width: 14),
                    Text(
                      "About",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'pageHead',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                  left: 25.0,
                  top: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.help_outline,
                      color: Colors.blue.shade600,
                      size: 25,
                    ),
                    SizedBox(width: 14),
                    Text(
                      "Help & feedback",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'pageHead',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                  left: 25.0,
                  top: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.power_settings_new,
                      color: Colors.blue.shade600,
                      size: 25,
                    ),
                    SizedBox(width: 14),
                    Text(
                      "Sign out",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'pageHead',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 0.0,
                  vertical: 0.0,
                ),
                child: Divider(
                  color: Colors.grey.shade400,
                  thickness: 0.5,
                  indent: 0,
                  endIndent: 20,
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Crednix",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'title',
                          fontStyle: FontStyle.normal,
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      backgroundColor: Colors.white,
    );
  }
}
