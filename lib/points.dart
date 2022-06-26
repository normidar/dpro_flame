import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';

class Points {
  static var points = {
    Vector2(50, 10),
    Vector2(10, 50),
  };
  static Vector2? caculateClosestPoint(
      Vector2 locate, Vector2 nextPointRelaive) {
    double minimumDistance = double.infinity;
    Vector2? closestPoint;
    for (var e in points) {
      final distance = e.distanceTo(locate);
      if (distance < minimumDistance) {
        closestPoint = e;
        minimumDistance = distance;
      }
    }
    if (closestPoint != null) {
      points.add(closestPoint + nextPointRelaive);
    }
    print(points.length);
    return closestPoint;
  }
}
