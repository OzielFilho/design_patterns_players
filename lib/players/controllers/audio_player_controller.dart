import 'dart:developer';

import 'package:design_patterns_players/players/controllers/player_controller.dart';

class AudioPlayerController implements PlayerController{
  @override
  Future<void> init() async{
    log('--> AudioPlayerController init()');
  }
}