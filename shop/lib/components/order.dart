import 'package:flutter/material.dart';
import 'package:shop/model/order_model.dart';
import 'package:intl/intl.dart';


class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key, required this.order});
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('R\$ ${order.total.toStringAsFixed(2)}'),
        subtitle: Text(
          DateFormat('dd/MM/yyyy hh:mm').format(order.date),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.expand_more),
          onPressed: () {},
        ),
      ),
    );
  }
}