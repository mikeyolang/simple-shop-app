import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import "package:shopapp/widgets/app_drawer.dart";
import "package:shopapp/widgets/user_product_item.dart";

import "../providers/products.dart";

class UserProductScreen extends StatelessWidget {
  static const routeName = "/user-products";
  const UserProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Products"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(6),
        child: ListView.builder(
          itemCount: productsData.items.length,
          itemBuilder: (_, i) => Column(
            children: [
              UserProductItem(
                title: productsData.items[i].title,
                imageUrl: productsData.items[i].imageUrl,
              ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
