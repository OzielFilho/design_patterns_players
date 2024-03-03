import 'package:design_patterns_players/players/builders/player_view_builder.dart';
import 'package:design_patterns_players/players/models/content_player.dart';
import 'package:flutter/material.dart';

class AudioPlayerViewBuilder implements PlayerViewBuilder {
  final ContentPlayer? _contentPlayer;
  const AudioPlayerViewBuilder({required ContentPlayer? contentPlayer})
      : _contentPlayer = contentPlayer;
  @override
  Widget get buildPlayerView =>  Text('Audio PLAYER -- ${_contentPlayer?.nameContent}');
}
