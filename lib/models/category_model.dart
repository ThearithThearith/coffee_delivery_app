// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final IconData icon;
  final VoidCallback onPress;

  CategoryModel({
    required this.title,
    required this.icon,
    required this.onPress,
  });
}

final categoryBeverages = [
  CategoryModel(
    title: 'Signatured',
    icon: Icons.local_drink_outlined,
    onPress: () {},
  ),
  CategoryModel(
    title: 'Iced Coffee',
    icon: Icons.coffee_rounded,
    onPress: () {},
  ),
  CategoryModel(
    title: 'Hot Coffee',
    icon: Icons.coffee_outlined,
    onPress: () {},
  ),
  CategoryModel(
    title: 'Chocolate',
    icon: Icons.icecream_outlined,
    onPress: () {},
  ),
];

final categoryFoods = [
  CategoryModel(
    title: 'Signatured',
    icon: Icons.star_border,
    onPress: () {},
  ),
  CategoryModel(
    title: 'Bakery',
    icon: Icons.bakery_dining_outlined,
    onPress: () {},
  ),
  CategoryModel(
    title: 'Salad',
    icon: Icons.food_bank_outlined,
    onPress: () {},
  ),
  CategoryModel(
    title: 'Yogurt',
    icon: Icons.card_giftcard,
    onPress: () {},
  ),
];
