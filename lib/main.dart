import 'package:dpro_flame/aim_cross.dart';
import 'package:dpro_flame/dpro_cpn/c_string.dart';
import 'package:dpro_flame/dragable_player.dart';
import 'package:dpro_flame/element_bar/bottom_element_bar.dart';
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

    add(BottomElementBar()
      ..size = Vector2(size.x, size.y / 3)
      ..position = Vector2(0, size.y * 2 / 3));
    add(
      CString()..position = Vector2.zero(),
    );
    // add(AimCross()..position = Vector2(20, 20));
  }
}
