// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  final String title;
  final double price;
  final String image;

  ProductModel({
    required this.title,
    required this.price,
    required this.image,
  });
}

// Sample products
final signaturedDrink = [
  ProductModel(
    title: 'Kopi Susu Brutal',
    price: 2.30,
    image: 'assets/images/iced_coffee/iced_coffee0.jpg',
  ),
  ProductModel(
    title: 'Caramel Santuy',
    price: 1.30,
    image: 'assets/images/iced_coffee/iced_coffee6.jpg',
  ),
  ProductModel(
    title: 'Cappucino Italiano',
    price: 2.90,
    image: 'assets/images/iced_coffee/iced_coffee5.jpg',
  ),
  ProductModel(
    title: 'Javachip Framinggo',
    price: 2.80,
    image: 'assets/images/iced_coffee/iced_coffee4.jpg',
  ),
  ProductModel(
    title: 'Iced Espresso',
    price: 2.60,
    image: 'assets/images/iced_coffee/iced_coffee3.jpg',
  ),
  ProductModel(
    title: 'Shakerato',
    price: 5.30,
    image: 'assets/images/iced_coffee/iced_coffee2.jpg',
  ),
  ProductModel(
    title: 'Iced-Cappuccino',
    price: 3.30,
    image: 'assets/images/iced_coffee/iced_coffee1.jpg',
  ),
  ProductModel(
    title: 'Iced-Latte',
    price: 4.30,
    image: 'assets/images/iced_coffee/iced_coffee0.jpg',
  ),
  ProductModel(
    title: 'Frappé',
    price: 1.40,
    image: 'assets/images/iced_coffee/iced_coffee6.jpg',
  ),
  ProductModel(
    title: 'Cappuccino Freddo',
    price: 2.00,
    image: 'assets/images/iced_coffee/iced_coffee5.jpg',
  ),
  ProductModel(
    title: 'Cold Brew Coffee',
    price: 1.30,
    image: 'assets/images/iced_coffee/iced_coffee4.jpg',
  ),
  ProductModel(
    title: 'Nitro Cold Brew',
    price: 3.30,
    image: 'assets/images/iced_coffee/iced_coffee3.jpg',
  ),
];
