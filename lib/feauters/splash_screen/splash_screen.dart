import 'dart:async';

import 'package:ecommerce/theme/theme.dart';
import 'package:ecommerce/widgets/circle_painter.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Timer(const Duration(seconds: 3), () {
        Navigator.of(context).pushReplacementNamed('/second_screen');
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: eccomeretheme.scaffoldBackgroundColor,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            CustomPaint(
              size: const Size(132, 132),
              painter: CirclePainter(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text(
                'Ecommerce \nConcept',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 500),
            ),
          ],
        ),
      ),
    );
  }
}
