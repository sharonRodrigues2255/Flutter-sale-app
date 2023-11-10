import 'package:flutter/material.dart';
import 'package:flutter_task/view/login_screen/login_screen.dart';
import 'package:flutter_task/view/registration_screen/registration_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4)).then((value) =>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => RegistrationScreen())));
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
}
