import 'package:dpro_flame/aim_cross.dart';
import 'package:dpro_flame/dragable_player.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.setPortrait();
  await Flame.device.fullScreen();

  final game = DproGame();

  runApp(GameWidget(game: game));
}

/// This class encapulates the whole game.
class DproGame extends FlameGame with HasDraggables {
  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    add(
      DraggablePlayer(text: "Text Super")..position = Vector2.zero(),
    );
    // add(AimCross()..position = Vector2(20, 20));
  }
}
