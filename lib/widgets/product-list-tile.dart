import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterpill01/models/product.dart';
import 'package:flutterpill01/router.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final ImageProvider<Object> image = product.imageUrl == null
        ? const AssetImage("assets/flutter-logo.png") as ImageProvider<Object>
        : NetworkImage(product.imageUrl!);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          // Exercise 3
          router.push("/product", extra: product);
        },
        title: Text(
          product.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Column(
          children: [
            Text(
              product.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            IgnorePointer(
              ignoring: true,
              child: RatingBar.builder(
                itemSize: 20,
                initialRating: product.ratingRate.toDouble(),
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (_) {},
              ),
            ),
            Text("Rate: ${product.ratingRate}"),
            Text("Count: ${product.ratingCount}")
          ],
        ),
        leading: CircleAvatar(
          backgroundImage: image,
        ),
        tileColor: Colors.purple[100],
      ),
    );
  }
}
