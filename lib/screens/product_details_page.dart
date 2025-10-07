import 'package:flutter/material.dart';
import 'package:product_listing/models/product_model.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        children: [
          Image.network(product.imageUrl,
          height: 300,
          width: 300,
          ),
          Row(
            children: [
              Text(product.name),
              Text('\$${product.price}'),
            ],
          )
        ],
      ),
    );
  }
}