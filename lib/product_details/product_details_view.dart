import 'package:flutter/material.dart';

import '../model/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  final Product product;

  const ProductDetailsView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.image,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            Text(
              product.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              '\$${product.price}',
              style: const TextStyle(
                fontSize: 22,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Text(product.description, style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 20),

            Text(
              'Brand: ${product.brand}',
              style: const TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 10),

            Text(
              'Category: ${product.category}',
              style: const TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 10),

            Text(
              product.inStock ? 'In Stock' : 'Out of Stock',
              style: TextStyle(
                fontSize: 17,
                color: product.inStock ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: product.inStock
                    ? () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Added to Cart')),
                        );
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
