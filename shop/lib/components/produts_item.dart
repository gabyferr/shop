import 'package:flutter/material.dart';
import 'package:shop/model/product.dart';

class ProductsItem extends StatelessWidget {
  const ProductsItem(
    this.products, {
    super.key,
  });
  final Product products;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(products.imageUrl),
      ),
      title: Text(products.name),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.blue,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
