import 'package:flutter/material.dart';
import 'package:navigator_page1/Models/shop_products.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details zum Hemd'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Zurück zum vorherigen Screen
          },
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(product.name),
          Text(product.description),
          Text('Preis: ${product.price}'),
          const SizedBox(height: 50),
          FloatingActionButton(
            onPressed: () => Navigator.pop(context),
          )
        ]),
      ),
    );
  }
}
