import '../../models/category_model.dart';
import '../../utils/category_chip.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text('Menu'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Foods or Drinks
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color(0XFFFAFAFA),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFFFAFAFA),
                        elevation: 0,
                        foregroundColor: Colors.black,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Foods',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Drinks',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Subcategory
              SizedBox(
                height: 60,
                child: ListView.builder(
                  // padding: const EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryBeverages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CategoryChip(
                        category: categoryBeverages[index],
                        active: index == 0,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              // Product Items
              SizedBox(
                height: 1000,
                width: double.infinity,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GridTile(
                      footer: const GridTileBar(
                        leading: SizedBox(
                          width: 100,
                          child: Text(
                            'Kopi Susu Brutal',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            maxLines: 2,
                          ),
                        ),
                      ),
                      header: const GridTileBar(
                        trailing: Material(
                          shape: StadiumBorder(),
                          color: Colors.white,
                          child: Text('\$ 2.00'),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/iced_coffee/iced_coffee$index.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
