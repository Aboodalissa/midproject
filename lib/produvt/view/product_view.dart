import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/favorite_cubit.dart';

import 'package:flutter/material.dart';

import '../../model/product_model.dart';
import '../../product_details/product_details_view.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  bool isGrid = true;

  final List<Product> products = [
    Product(
      name: 'Nike Air Max',
      price: 120,
      image: 'https://picsum.photos/300/200?1',
      description: 'Comfortable Nike shoes',
      brand: 'Nike',
      category: 'Shoes',
      inStock: true,
    ),
    Product(
      name: 'Travel Backpack',
      price: 60,
      image: 'https://picsum.photos/300/200?2',
      description: 'Durable backpack for travel',
      brand: 'Urban Gear',
      category: 'Bags',
      inStock: true,
    ),
    Product(
      name: 'Wireless Headphones',
      price: 199,
      image: 'https://picsum.photos/300/200?3',
      description: 'High quality wireless headphones',
      brand: 'SoundMax',
      category: 'Electronics',
      inStock: true,
    ),
    Product(
      name: 'Smart Watch',
      price: 299,
      image: 'https://picsum.photos/300/200?4',
      description: 'Smart watch with modern features',
      brand: 'TechTime',
      category: 'Wearables',
      inStock: true,
    ),
    Product(
      name: 'Sunglasses',
      price: 90,
      image: 'https://picsum.photos/300/200?5',
      description: 'Stylish sunglasses for everyday use',
      brand: 'Vision',
      category: 'Accessories',
      inStock: true,
    ),
    Product(
      name: 'Casual Shoes',
      price: 85,
      image: 'https://picsum.photos/300/200?6',
      description: 'Comfortable casual shoes',
      brand: 'StreetStep',
      category: 'Shoes',
      inStock: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              // Search
            },
            icon: const Icon(Icons.search),
          ),

          IconButton(
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
            icon: Icon(isGrid ? Icons.list : Icons.grid_view),
          ),
        ],
      ),

      body: isGrid
          ? GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailsView(product: product),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                          product.image,
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            product.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text('\$${product.price}'),
                      ],
                    ),
                  ),
                );
              },
            )
          : ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailsView(product: product),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      leading: Image.network(
                        product.image,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      title: Text(product.name),
                      subtitle: Text('\$${product.price}'),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
