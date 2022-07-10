import 'package:dpro_flame/aim_cross.dart';
import 'package:flame/components.dart';
import 'package:flame/extensions.dart';

class Points {
  static var points = {
    Vector2(50, 10),
    Vector2(10, 50),
  };
  static Vector2? caculateClosestPoint(
      Component component, Vector2 locate, Vector2 nextPointRelaive) {
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
      component.add(AimCross()..position = closestPoint + nextPointRelaive);
    }
    // print(points.length);
    return closestPoint;
  }
}
