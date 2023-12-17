import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;
  final VoidCallback? onTap;

  const CustomCardWidget({
    super.key,
    this.width = 200,
    this.height = 140,
    required this.imagePath, // or   this.imagePath = 'assets/images/a.png',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () => print('hhhhhhh'),
      child: SizedBox(
        width: width,
        height: height,
        child: Card(
          elevation: 5,
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
