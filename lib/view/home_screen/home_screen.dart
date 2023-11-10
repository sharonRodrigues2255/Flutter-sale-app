import 'package:flutter/material.dart';
import 'package:flutter_task/controller/homepage_controller.dart';
import 'package:flutter_task/view/home_screen/widget/product_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      Provider.of<HomepageController>(context, listen: false).fetchData();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomepageController>(context);
    print(provider.productsData);
    return Scaffold(
      appBar: AppBar(
        title: Text("BuyCart"),
      ),
      body: Column(
        children: [
          Text(
            "Products for you",
            style: TextStyle(fontSize: 22),
          ),
          Expanded(
            child: provider.isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: provider.productsData?.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ProductCard(
                          product: provider.productsData?[index],
                        ),
                      );
                    }),
          ),
        ],
      ),
    );
  }
}
