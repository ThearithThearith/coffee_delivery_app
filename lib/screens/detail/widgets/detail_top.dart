import 'package:flutter/material.dart';

class DetailTop extends StatelessWidget {
  const DetailTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/images/iced_coffee/iced_coffee3.jpg',
            width: 120,
          ),
        ),

        const SizedBox(height: 20),

        // Title
        Text(
          'Caramel Santuy',
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black,
              ),
        ),
        const SizedBox(height: 10),

        // Description
        const Padding(
          padding: EdgeInsets.only(left: 50, right: 50, bottom: 30),
          child: Text(
            'Buttery caramel syrup meets coffee, milk and ice for a rendezvous in the blender.\nThe cream and caramel enjoy with santuy.',
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
