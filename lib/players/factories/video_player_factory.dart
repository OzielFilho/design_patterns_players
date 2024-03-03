import 'package:design_patterns_players/players/builders/player_view_builder.dart';
import 'package:design_patterns_players/players/builders/video_player_view_builder.dart';
import 'package:design_patterns_players/players/controllers/player_controller.dart';
import 'package:design_patterns_players/players/controllers/video_player_controller.dart';
import 'package:design_patterns_players/players/factories/player_factory.dart';
import 'package:design_patterns_players/players/models/content_player.dart';
import 'package:design_patterns_players/players/observers/player_observer.dart';
import 'package:design_patterns_players/players/observers/video_player_observer.dart';

class VideoPlayerFactory implements PlayerFactory{
  final ContentPlayer _contentPlayer;
  const VideoPlayerFactory({required ContentPlayer contentPlayer})
      : _contentPlayer = contentPlayer;

  @override
  PlayerController get createPlayerController => VideoPlayerController();

  @override
  PlayerObserver get createPlayerObserver => VideoPlayerObserver();

  @override
  PlayerViewBuilder get createPlayerViewBuilder => VideoPlayerViewBuilder(contentPlayer: _contentPlayer);

}