import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/model/product.dart';

class ProductList with ChangeNotifier {
  final List<Product> _items = dummyProducts;

  List<Product> get items => [..._items];
  List<Product> get favoriteItems => _items.where((prod) => prod.isFavorite).toList();

  int get itemsCount{
    return _items.length;
  }

  void addProductFormData(Map<String, Object>  data) {

    final newProduct = Product(
      id: Random().nextDouble().toString(),
      name: data['name'] as String,
      description: data['description'] as String,
      price: data['price'] as double,
      imageUrl: data['imageUrl'] as String,
    );
    addProduct(newProduct);
  }
  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
