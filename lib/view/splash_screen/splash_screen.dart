import 'package:flutter/material.dart';
import 'package:flutter_task/view/bottom_navigation/bottom_navigation.dart';

import 'package:flutter_task/view/registration_screen/registration_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkRegistered();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Icon(
                Icons.shopping_bag,
                size: 55,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            child: Text(
              " Your One-Stop Shopping Destination!",
              style: TextStyle(
                  color: Color.fromARGB(255, 110, 84, 84),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  checkRegistered() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? check = prefs.getBool("log");
    print(check);

    if (check == true) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNavigation()));
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => RegistrationScreen()));
    }
  }
}
