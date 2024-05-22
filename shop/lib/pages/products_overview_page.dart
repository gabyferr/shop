import 'package:flutter/material.dart';
import 'package:shop/components/product_grid.dart';

class ProductsOverviewPage extends StatelessWidget {
  const ProductsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "Minha Loja",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body:const ProductGrid(),
      );
  }
}
