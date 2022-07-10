import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class BottomElementBar extends PositionComponent {
  final Vector2 parentSize;
  BottomElementBar(this.parentSize);

  @override
  Future<void> onLoad() async {
    await super.onLoad();
  }

  final Paint _paint = Paint();
  @override
  void render(Canvas canvas) {
    _paint.color = Color.fromARGB(255, 183, 182, 182);
    _paint.strokeWidth = 1.8;
    canvas.drawRect(
        Rect.fromLTRB(0, parentSize.y * 0.7, parentSize.x, parentSize.y),
        _paint);
  }
}
