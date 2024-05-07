import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterpill01/models/product.dart';
import 'package:flutterpill01/widgets/product_list_tile.dart';
import 'package:flutterpill01/widgets/refresh_product_button.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatefulWidget {
  StoreApp({super.key});

  final List<Product> productList = [];

  @override
  State<StoreApp> createState() => _StoreAppState();
}

class _StoreAppState extends State<StoreApp> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
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
                children: widget.productList.map((product) {
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
      ),
    );
  }

  void addProduct() {
    setState(() {
      isLoading = true;
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
    });
  }
}
