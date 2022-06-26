import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';

class Points {
  static final points = [
    Vector2(50, 10),
    Vector2(10, 50),
  ];
  static Vector2? caculateClosestPoint(Vector2 locate) {
    double minimumDistance = double.infinity;
    Vector2? closestPoint;
    for (int i = 0; i < points.length; i++) {
      final distance = points[i].distanceTo(locate);
      if (distance < minimumDistance) {
        closestPoint = points[i];
        minimumDistance = distance;
      }
    }
    return closestPoint;
  }
}
