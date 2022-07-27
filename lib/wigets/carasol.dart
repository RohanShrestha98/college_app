// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class MyCarasol extends StatelessWidget {
  const MyCarasol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Carousel(
      dotSize: 6.0,
      dotSpacing: 15.0,
      dotPosition: DotPosition.bottomCenter,
      images: [
        Image.asset('assets/images/1.jpg', fit: BoxFit.cover),
        Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
        Image.asset('assets/images/4.jpg', fit: BoxFit.cover),
      ],
    );
  }
}
