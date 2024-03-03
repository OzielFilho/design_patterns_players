import 'package:design_patterns_players/players/enums/content_player_type.dart';
import 'package:design_patterns_players/players/models/content_player.dart';

class VideoContentMock extends ContentPlayer {
  VideoContentMock()
      : super(
            id: "1234",
            nameContent: "Video Mp4",
            type: ContentPlayerType.video);
}
