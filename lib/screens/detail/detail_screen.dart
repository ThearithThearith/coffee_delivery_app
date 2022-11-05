import 'widgets/detail_option_tile.dart';
import 'widgets/detail_top.dart';
import 'widgets/drink_size_tile.dart';
import 'widgets/topping_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);
  final toppings = [
    'Boba',
    'Almond',
    'Cheese',
    'Oat Milk',
    'Brown Sugar',
    'Honey',
    'Chocolate Chips',
    'Cocoa Powder',
    'Sprinkles',
    'Nutella',
    'Mint'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image, Title, Description
            const DetailTop(),

            // Options
            Container(
              width: double.infinity,
              height: 480,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                color: Color(0XFFF8F8F8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Drink Size
                  const DetailOptionTitle(title: 'Drink Size'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        DrinkSizeTile(title: 'Basic'),
                        SizedBox(width: 20),
                        DrinkSizeTile(title: 'Middle', active: true),
                        SizedBox(width: 20),
                        DrinkSizeTile(title: 'Large'),
                      ],
                    ),
                  ),

                  // Toppings
                  const DetailOptionTitle(title: 'Toppings'),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ToppingButton(
                          title: toppings[index],
                          active: index == 0,
                        );
                      },
                      itemCount: toppings.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Additional Request
                  const DetailOptionTitle(title: 'Additional Req'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Do you have any other request?',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_circle_outline,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Text('Add to bag'),
              label: const Text(
                '\$ 2.95',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
