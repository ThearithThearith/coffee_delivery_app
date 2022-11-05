import '../../models/product_model.dart';
import '../detail/detail_screen.dart';
import 'widgets/menu_appbar.dart';
import 'widgets/menu_category.dart';
import 'widgets/product_tile.dart';
import '../../utils/fab_cart.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FabCart(),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const MenuAppBar(),
          // Category
          const MenuCategory(),

          // Products
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return DetailScreen();
                        }),
                      );
                    },
                    child: ProductTile(product: signaturedDrink[index]),
                  );
                },
                childCount: signaturedDrink.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.75,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 30),
          ),
        ],
      ),
    );
  }
}
