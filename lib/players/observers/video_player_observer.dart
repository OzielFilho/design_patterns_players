import 'dart:developer';

import 'package:design_patterns_players/players/observers/player_observer.dart';

class VideoPlayerObserver implements PlayerObserver{
  @override
  void notifyListeners() {
    log('Notificando observadores do player de vídeo.');
  }
}