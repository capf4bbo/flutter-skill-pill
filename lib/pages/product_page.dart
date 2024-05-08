import 'package:flutter/material.dart';
import 'package:flutterpill01/models/product.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, this.product});

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Store App"),
      ),
      body: product == null
          ? const Center(child: Text("No data"))
          : Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: product!.imageUrl == null
                        ? const AssetImage("assets/flutter-logo.png")
                            as ImageProvider<Object>
                        : NetworkImage(product!.imageUrl!),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(product!.title),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(product!.title),
                ],
              ),
            ),
    );
  }
}
