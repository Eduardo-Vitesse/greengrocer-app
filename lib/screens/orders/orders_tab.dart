import 'package:flutter/material.dart';
import 'package:greengrocer/config/app_data.dart' as app_data;
import 'package:greengrocer/screens/orders/components/order_tile.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        itemCount: app_data.orders.length,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) =>
            OrderTile(order: app_data.orders[index]),
      ),
    );
  }
}
