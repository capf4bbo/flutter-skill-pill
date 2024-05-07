import 'dart:convert';

import 'package:http/http.dart' as http;

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterpill01/models/product.dart';
import 'package:flutterpill01/widgets/product_list_tile.dart';
import 'package:flutterpill01/widgets/refresh_product_button.dart';
import 'package:go_router/go_router.dart';

final List<Product> productList = [];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  int itemNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Store App"),
        actions: [
          IconButton(
              onPressed: () => context.go("/settings"),
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: min(MediaQuery.of(context).size.width * 0.7, 700),
            child: ListView(
              // Exercise 1, add ProductListTile
              children: productList.map((product) {
                return ProductListTile(
                  product: product,
                );
              }).toList(),
            ),
          ),
          // Exercise 2, add RefreshProductButton
          RefreshProductButton(
              isLoading: isLoading,
              onPressed: () {
                addProduct();
              }),
        ],
      ),
    );
  }

  void addProduct() async {
    itemNumber = (itemNumber) % 19 + 1;
    isLoading = true;
    setState(() {});
    var url = Uri.parse("http://fakestoreapi.com/products/$itemNumber");
    var response = await http.get(url);
    var decoded = jsonDecode(response.body);
    var newProduct = Product.fromMap(decoded);
    productList.add(newProduct);
    isLoading = false;
    setState(() {});
  }
}
