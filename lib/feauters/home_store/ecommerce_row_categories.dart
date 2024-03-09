import 'package:ecommerce/theme/theme.dart';
import 'package:flutter/material.dart';

class RowCategories extends StatelessWidget {
  const RowCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Ellipse 7.png'),
                Positioned(
                  left: 47,
                  bottom: 40,
                  child: Image.asset('assets/images/Vector.png'),
                ),
              ],
            ),
            const Text(
              'Phones',
              textAlign: TextAlign.center,
              style: baseCategoryStyle,
            ), // Добавьте свой текст здесь
          ],
        ),
        Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Ellipse 3.png'),
                Positioned(
                  left: 42,
                  top: 40,
                  child: Image.asset('assets/images/Vector (1).png'),
                ),
              ],
            ),
            const Text(
              'Computer',
              textAlign: TextAlign.center,
              style: baseCategoryStyle,
            )
          ],
        ),
        Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Ellipse 3.png'),
                Positioned(
                  left: 47,
                  top: 40,
                  child: Image.asset('assets/images/Vector (5).png'),
                ),
              ],
            ),
            const Text(
              'Books',
              textAlign: TextAlign.center,
              style: baseCategoryStyle,
            ),
          ],
        ),
      ],
    );
  }
}
