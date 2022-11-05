// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_delivery_app/models/category_model.dart';
import 'package:coffee_delivery_app/screens/menu/menu_screen.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final CategoryModel category;
  final bool active;

  const CategoryChip({
    Key? key,
    required this.category,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return OutlinedButton.icon(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const MenuScreen();
        }));
      },
      icon: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          category.icon,
          color: Colors.black87,
        ),
      ),
      label: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          category.title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: Size(size.width * 0.41, 60),
        maximumSize: Size(size.width * 0.42, 60),
        alignment: Alignment.centerLeft,
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        backgroundColor:
            active ? Colors.black : const Color.fromARGB(255, 236, 236, 236),
        foregroundColor: active ? Colors.white : Colors.black87,
        side: BorderSide.none,
      ),
    );
  }
}
