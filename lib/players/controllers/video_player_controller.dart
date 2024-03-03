import 'dart:developer';

import 'package:design_patterns_players/players/controllers/player_controller.dart';

class VideoPlayerController implements PlayerController{
  @override
  Future<void> init() async{
    log('--> VideoPlayerController init()');
  }
}