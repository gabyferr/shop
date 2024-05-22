import 'package:flutter/material.dart';
import 'package:shop/model/product.dart';

class ProductDetailPage extends StatelessWidget {

  const ProductDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  final Product product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:  Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
              product.title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
