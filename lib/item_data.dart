import 'package:flutter/material.dart';

class ItemData {
  final String title;
  final int exerciseCount;
  final int duration;
  final String imageUrl;
  final Color customColor;

  const ItemData({
    required this.title,
    required this.exerciseCount,
    required this.duration,
    required this.imageUrl,
    required this.customColor,
  });
}
