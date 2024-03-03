import 'package:design_patterns_players/players/enums/content_player_type.dart';
import 'package:design_patterns_players/players/models/content_player.dart';

class AudioContentMock extends ContentPlayer {
  AudioContentMock()
      : super(
            id: "5678",
            nameContent: "Audio Mp3",
            type: ContentPlayerType.audio);
}
