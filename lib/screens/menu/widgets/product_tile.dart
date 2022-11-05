// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_delivery_app/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;
  const ProductTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        leading: SizedBox(
          width: 100,
          child: Text(
            product.title,
            style: const TextStyle(fontSize: 20, color: Colors.white),
            maxLines: 2,
          ),
        ),
      ),
      header: GridTileBar(
        title: const Text(''),
        trailing: Material(
          shape: const StadiumBorder(),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              '\$ ${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          product.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
