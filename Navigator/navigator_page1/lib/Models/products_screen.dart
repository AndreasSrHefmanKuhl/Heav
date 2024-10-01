import 'package:flutter/material.dart';
import 'package:navigator_page1/Models/details_screen.dart';
import 'package:navigator_page1/Models/shop_products.dart';

final List<Product> items = [
  Product(
      name: 'Hemd',
      description: 'Ein Hemd das wirklich gut passt',
      price: 49.99),
];

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Produkte'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Schaue ein schönes Produkt an,'),
              Text('indem du auf den FAB drückst.'),
            ],
          ),
        ),
        floatingActionButton: const NaviButton(),
      ),
    );
  }
}

class NaviButton extends StatelessWidget {
  const NaviButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(product: items[0])),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
