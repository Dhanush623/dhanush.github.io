import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImageLoader extends StatelessWidget {
  final String imageUrl;

  const CustomImageLoader({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    if (imageUrl.toLowerCase().endsWith('.svg')) {
      return SvgPicture.asset(
        imageUrl,
        width: 40,
        height: 40,
      );
    } else {
      return Image.asset(
        imageUrl,
        width: 40,
        height: 40,
      );
    }
  }
}
