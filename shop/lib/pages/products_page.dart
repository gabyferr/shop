import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/app_drawer.dart';
import 'package:shop/components/produts_item.dart';
import 'package:shop/model/product_list.dart';
import 'package:shop/utils/app_routes.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductList products = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.productsFormPages,
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
        title: const Center(
          child: Text(
            'Gerenciar Produtos',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: products.itemsCount,
          itemBuilder: (context, i) => Column(
            children: [
              ProductsItem(products.items[i]),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
