// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_delivery_app/screens/detail/detail_screen.dart';
import 'package:coffee_delivery_app/screens/menu/widgets/product_tile.dart';
import 'package:flutter/material.dart';

import 'package:coffee_delivery_app/models/product_model.dart';

class HomeRecommend extends StatelessWidget {
  const HomeRecommend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemCount: signaturedDrink.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return DetailScreen();
              }),
            ),
            child: ProductTile(product: signaturedDrink[index]),
          );
        },
      ),
    );
  }
}
