import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/product.dart';
import 'package:shop/utils/app_routes.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: GridTile(
          footer: GridTileBar(
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    product.title,
                    style: const TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.black87,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                product.toggleFavorite();
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Color(0xFF9EC0FF),
              ),
            ),
          ),
          child: GestureDetector(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.of(context)
                  .pushNamed(AppRoutes.productDetail, arguments: product);
            },
          ),
        ),
      ),
    );
  }
}
