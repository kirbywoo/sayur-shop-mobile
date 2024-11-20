import 'package:flutter/material.dart';
import 'package:sayur_shop/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${product.fields.name}",
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "Description: ${product.fields.description}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8),
            Text(
              "Stock: ${product.fields.stock}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8),
            Text(
              "Price: Rp${product.fields.price.toStringAsFixed(0)}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8),
            Text(
              "Rating: ${product.fields.rating}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to List"),
            ),
          ],
        ),
      ),
    );
  }
}
