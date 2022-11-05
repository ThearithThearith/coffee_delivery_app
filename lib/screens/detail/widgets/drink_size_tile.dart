// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrinkSizeTile extends StatelessWidget {
  final String title;
  final bool active;

  const DrinkSizeTile({
    Key? key,
    required this.title,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: active ? const Color(0XFFf3b5c5) : Colors.white,
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/drink_size.svg', height: 60),
            const SizedBox(height: 6),
            Text(title),
          ],
        ),
      ),
    );
  }
}
