import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

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
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: [
                  // TODO: Exercise 1, add ProductListTile
                ],
              ),
            )
            // TODO: Exercise 2, add AddPrductButton
            // TODO: Exercise 3
          ],
        ),
      ),
    );
  }
}
