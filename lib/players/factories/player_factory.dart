  import 'package:design_patterns_players/players/builders/player_view_builder.dart';
import 'package:design_patterns_players/players/controllers/player_controller.dart';
import 'package:design_patterns_players/players/observers/player_observer.dart';

abstract class PlayerFactory{
    PlayerViewBuilder get createPlayerViewBuilder;
    PlayerObserver get createPlayerObserver;
    PlayerController get createPlayerController;
  }