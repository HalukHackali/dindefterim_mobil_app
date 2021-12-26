import 'package:flutter/material.dart';

class Sinif {
  final String name, speciality, image;
  final int reviews;
  final int reviewScore;
  final Widget sinifLink;

  Sinif({
    required this.name,
    required this.speciality,
    required this.image,
    required this.reviews,
    required this.reviewScore,
    required this.sinifLink,
  });
}
