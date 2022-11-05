import '../../../models/category_model.dart';
import '../../../utils/category_chip.dart';
import 'section_title.dart';
import 'package:flutter/material.dart';

class HomeBeverages extends StatelessWidget {
  const HomeBeverages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Beverages',
          onPress: () {},
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryChip(category: categoryBeverages[0]),
            const SizedBox(width: 20),
            CategoryChip(category: categoryBeverages[1]),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryChip(category: categoryBeverages[2]),
            const SizedBox(width: 20),
            CategoryChip(category: categoryBeverages[3]),
          ],
        ),
      ],
    );
  }
}
