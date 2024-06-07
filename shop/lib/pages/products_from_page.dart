import 'package:flutter/material.dart';

class ProductsFormPages extends StatefulWidget {
  const ProductsFormPages({super.key});

  @override
  State<ProductsFormPages> createState() => _ProductsFormPagesState();
}

class _ProductsFormPagesState extends State<ProductsFormPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Formulário De Produto',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
