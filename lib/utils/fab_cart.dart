import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class FabCart extends StatelessWidget {
  const FabCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Badge(
        badgeContent: const Text(
          '3',
          style: TextStyle(color: Colors.white),
        ),
        badgeColor: Colors.black,
        position: BadgePosition.topEnd(top: -25, end: -20),
        padding: const EdgeInsets.all(8),
        child: const Icon(Icons.shopping_basket_outlined),
      ),
    );
  }
}
