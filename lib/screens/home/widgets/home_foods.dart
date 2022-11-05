import '../../../models/category_model.dart';
import '../../../utils/category_chip.dart';
import 'section_title.dart';
import 'package:flutter/material.dart';

class HomeFoods extends StatelessWidget {
  const HomeFoods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Foods',
          onPress: () {},
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryChip(category: categoryFoods[0]),
            const SizedBox(width: 20),
            CategoryChip(category: categoryFoods[1]),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryChip(category: categoryFoods[2]),
            const SizedBox(width: 20),
            CategoryChip(category: categoryFoods[3]),
          ],
        ),
      ],
    );
  }
}
