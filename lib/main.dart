import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterpill01/models/product.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  StoreApp({super.key});

  final List<Product> productList = [];

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
                // TODO: Exercise 1, add ProductListTile
                children: const [],
              ),
            )
            // TODO: Exercise 2, add RefreshPrductButton
            // TODO: Exercise 3
          ],
        ),
      ),
    );
  }
}
