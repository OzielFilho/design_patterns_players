import 'package:design_patterns_players/players/controllers/player_controller.dart';
import 'package:design_patterns_players/players/enums/content_player_type.dart';
import 'package:design_patterns_players/players/factories/audio_player_factory.dart';
import 'package:design_patterns_players/players/factories/player_factory.dart';
import 'package:design_patterns_players/players/factories/video_player_factory.dart';
import 'package:design_patterns_players/players/mocks/audio_content_mock.dart';
import 'package:design_patterns_players/players/mocks/video_content_mock.dart';
import 'package:design_patterns_players/players/models/content_player.dart';
import 'package:design_patterns_players/players/player_page.dart';
import 'package:flutter/material.dart';

class PlayerInitializationController implements PlayerController {
  final BuildContext _context;
    final String _contentId;
  const PlayerInitializationController({required BuildContext context, required String contentId})
      : _context = context,
        _contentId = contentId;     

  @override
  Future<void> init() async{
    final contentPlayer = _contentPlayer;
    final playerFactory = _createPlayerFactory(contentPlayer);
    await _navigateToPlayerPage(playerFactory);
  }

  PlayerFactory  _createPlayerFactory(ContentPlayer contentPlayer) {
    switch (contentPlayer.type) {
      case ContentPlayerType.video:
        return VideoPlayerFactory(contentPlayer: contentPlayer);
      case ContentPlayerType.audio:
        return AudioPlayerFactory(contentPlayer: contentPlayer);
      default:
        throw Exception('Type not supported');
    }
  }

  ContentPlayer get _contentPlayer {
    if(_contentId == '1234') return VideoContentMock();
    return AudioContentMock();
  }

  Future<void> _navigateToPlayerPage(PlayerFactory? factory) async =>
      await Navigator.pushReplacement(_context,MaterialPageRoute(
          builder: (context) => PlayerPage(factory: factory)));
}
