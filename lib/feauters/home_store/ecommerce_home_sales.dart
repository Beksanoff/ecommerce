import 'package:ecommerce/theme/theme.dart';
import 'package:flutter/material.dart';

class HotSalesWidget extends StatelessWidget {
  const HotSalesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 160),
                child: Text(
                  'Hot sales',
                  style: selectCategory,
                ),
              ),
              Text(
                'see more',
                style: viewAll,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),

          Image.asset(
              'assets/images/Group 5.png'), // Замените 'assets/your_image.png' на путь к вашему изображению
        ],
      ),
    );
  }
}
