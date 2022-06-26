import 'package:dpro_flame/player.dart';
import 'package:dpro_flame/points.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart' show Colors;

// Note: this component does not consider the possibility of multiple
// simultaneous drags with different pointerIds.
class DraggablePlayer extends Player with Draggable {
  @override
  bool debugMode = false;

  DraggablePlayer({Vector2? position, required String text}) : super(text);

  Vector2? dragDeltaPosition;

  @override
  void update(double dt) {
    super.update(dt);
    // debugColor = isDragged
    //     ? Colors.greenAccent
    //     : Colors.purple;
  }

  @override
  bool onDragStart(DragStartInfo info) {
    dragDeltaPosition = info.eventPosition.game - position;
    return false;
  }

  @override
  bool onDragUpdate(DragUpdateInfo info) {
    // if (parent is! DraggablePlayer) {
    //   return true;
    // }
    final dragDeltaPosition = this.dragDeltaPosition;
    if (dragDeltaPosition == null) {
      return false;
    }

    position.setFrom(info.eventPosition.game - dragDeltaPosition);
    return false;
  }

  @override
  bool onDragEnd(_) {
    dragDeltaPosition = null;
    add(MoveEffect.to(
      Points.caculateClosestPoint(position, Vector2(0, height)) ??
          Vector2.zero(),
      EffectController(duration: 0.25),
    ));
    return false;
  }

  @override
  bool onDragCancel() {
    dragDeltaPosition = null;
    return false;
  }
}
