import 'package:flutter/material.dart';

Color? colorFromName(String? name) {
  if (name == null) return null;

  final colorMap = <String, Color>{
    'white': Colors.white,
    'black': Colors.black,
    'red': Colors.red,
    'green': Colors.green,
    'blue': Colors.blue,
    'yellow': Colors.yellow,
    'orange': Colors.orange,
    'purple': Colors.purple,
    'pink': Colors.pink,
    'brown': Colors.brown,
    'grey': Colors.grey,
    'gray': Colors.grey,
    // можно добавить свои кастомные
    'beige': const Color(0xFFF5F5DC),
    'gold': const Color(0xFFFFD700),
    'silver': const Color(0xFFC0C0C0),
  };

  return colorMap[name.toLowerCase()];
}
