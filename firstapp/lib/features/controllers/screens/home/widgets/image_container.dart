import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.width,
    this.height = 125,
    required this.imageUrl,
    this.padding,
    this.margin,
    this.borderRadius = 20,
    this.child,
  });

  final double width;
  final double height;
  final String imageUrl;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      margin: margin,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(
              image: AssetImage(imageUrl), fit: BoxFit.cover)),
      child: child,
    );
  }
}