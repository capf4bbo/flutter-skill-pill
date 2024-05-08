import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterpill01/models/product.dart';
import 'package:flutterpill01/widgets/refresh_product_button.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  final List<Product> productList = [];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Store App"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: min(MediaQuery.of(context).size.width * 0.7, 700),
            child: ListView(
              // Exercise 1, add ProductListTile
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

  void addProduct() {
    setState(() {
      isLoading = true;
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        // Exercise 3
        widget.productList.add(const Product(
            title: "Battery",
            description:
                "Lorem ipsum dolor sit amet consectetur adipiscing elit proin, volutpat curabitur tellus laoreet auctor lectus vel et aenean, placerat etiam porta nullam suspendisse dis vestibulum.",
            price: 10.4,
            ratingRate: 3.5,
            ratingCount: 120));
        isLoading = false;
      });
    });
  }
}