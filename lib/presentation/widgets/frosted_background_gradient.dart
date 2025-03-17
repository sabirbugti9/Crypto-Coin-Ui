import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedBackgroundGradient extends StatelessWidget {
  final Color color;
  final Color leftGradient;
  final Color rightGradient;

  const FrostedBackgroundGradient({
    super.key,
    required this.color,
    required this.leftGradient,
    required this.rightGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.sizeOf(context).height * .52,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(.1),
                    Colors.white.withOpacity(.2),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: color.withGreen(50),
                ),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 100,
                sigmaY: 100,
              ),
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
