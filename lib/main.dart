import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            toolbarHeight: 50,
            // TODO: Exercise 3, add Header
            flexibleSpace: Container()),
        body: Row(
          children: [
            // TODO: Exercise 1, add MyTextWidget
            // TODO: Exercise 2, add CounterWidget
          ],
        ),
      ),
    );
  }
}
