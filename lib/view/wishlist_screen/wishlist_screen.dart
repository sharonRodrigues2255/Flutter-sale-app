import 'package:flutter/material.dart';
import 'package:flutter_task/controller/homepage_controller.dart';
import 'package:provider/provider.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    final homeprovider = Provider.of<HomepageController>(context);
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Container();
      }),
    );
  }
}
