import 'package:dpro_flame/dragable_player.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class BottomElementBar extends PositionComponent {

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(
      DraggablePlayer(text: "Text Super")..position = Vector2.zero(),
    );
  }

  final Paint _paint = Paint();
  @override
  void render(Canvas canvas) {
    _paint.color = Color.fromARGB(255, 183, 182, 182);
    _paint.strokeWidth = 1.8;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.x, size.y), _paint);
  }
}
