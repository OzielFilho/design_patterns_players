import 'package:design_patterns_players/players/builders/audio_player_view_builder.dart';
import 'package:design_patterns_players/players/builders/player_view_builder.dart';
import 'package:design_patterns_players/players/controllers/audio_player_controller.dart';
import 'package:design_patterns_players/players/controllers/player_controller.dart';
import 'package:design_patterns_players/players/factories/player_factory.dart';
import 'package:design_patterns_players/players/models/content_player.dart';
import 'package:design_patterns_players/players/observers/audio_player_observer.dart';
import 'package:design_patterns_players/players/observers/player_observer.dart';

class AudioPlayerFactory implements PlayerFactory{
  final ContentPlayer _contentPlayer;
  const AudioPlayerFactory({required ContentPlayer contentPlayer})
      : _contentPlayer = contentPlayer;

  @override
  PlayerController get createPlayerController => AudioPlayerController();

  @override
  PlayerObserver get createPlayerObserver => AudioPlayerObserver();

  @override
  PlayerViewBuilder get createPlayerViewBuilder => AudioPlayerViewBuilder(contentPlayer: _contentPlayer);

}