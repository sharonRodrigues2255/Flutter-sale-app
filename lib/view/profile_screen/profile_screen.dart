import 'package:flutter/material.dart';
import 'package:flutter_task/view/registration_screen/registration_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),

          CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.person,
              size: 40,
            ),
          ),
          SizedBox(height: 20),
          // User name
          Text(
            'John Doe',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),

          ListTile(
            leading: Icon(Icons.email),
            title: Text('john.doe@example.com'),
          ),

          ListTile(
            leading: Icon(Icons.phone),
            title: Text('+1234567890'),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setBool("log", false);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RegistrationScreen()));
            },
            child: Text('Log Out'),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            child: Text(
              'Delete User',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
