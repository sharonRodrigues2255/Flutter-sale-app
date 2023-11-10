import 'package:flutter/material.dart';
import 'package:flutter_task/controller/homepage_controller.dart';
import 'package:flutter_task/controller/wishlist_controller.dart';
import 'package:flutter_task/view/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WishlistController()),
        ChangeNotifierProvider(create: (context) => HomepageController())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
