import 'package:flutter/material.dart';
import 'package:shop/model/cart_item_model.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget(this.cartItem, {super.key});
  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: FittedBox(
              child: Text(
                '${cartItem.price}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        title: Text(cartItem.name),
        subtitle: Text('Total: R\$ ${cartItem.price * cartItem.quantity}'),
        trailing: Text('${cartItem.quantity}x'),
      ),
    );
  }
}
