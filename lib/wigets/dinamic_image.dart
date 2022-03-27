import 'package:dictionary/core/domain/entities/dictionary_image.dart';
import 'package:flutter/material.dart';

class DynamicImage extends StatelessWidget {
  const DynamicImage({
    Key? key,
    required this.img,
    required this.imgHeight,
    required this.imgWidth,
  }) : super(key: key);

  final DictionaryImage img;
  final double imgHeight;
  final double imgWidth;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      img.path,
      fit: BoxFit.cover,
      height: imgHeight,
      width: imgWidth,
    );
  }
}
