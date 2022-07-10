import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class AimCross extends PositionComponent {
  AimCross();
  @override
  Future<void> onLoad() async {
    await super.onLoad();
  }

  final Paint _paint = Paint();
  @override
  void render(Canvas canvas) {
    _paint.color = Colors.red;
    _paint.strokeWidth = 1.8;
    const double length = 5;
    canvas.drawLine(Offset.zero, const Offset(-length, 0), _paint);
    canvas.drawLine(Offset.zero, const Offset(0, -length), _paint);
    canvas.drawLine(Offset.zero, const Offset(length, 0), _paint);
    canvas.drawLine(Offset.zero, const Offset(0, length), _paint);
  }
}
