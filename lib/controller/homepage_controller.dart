import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_task/config/api_endpoints.dart';
import 'package:flutter_task/model/products_model.dart';
import 'package:http/http.dart' as http;

class HomepageController with ChangeNotifier {
  List<ProductsModel?>? productsData;
  bool isLoading = false;

  fetchData() async {
    isLoading = true;
    notifyListeners();
    final url = Uri.parse("${ApiEndpoints.baseUrl}${ApiEndpoints.productsGet}");

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List responseData = jsonDecode(response.body);
      productsData =
          responseData.map((e) => ProductsModel.fromJson(e)).toList();
    }

    isLoading = false;
    notifyListeners();
  }
}
