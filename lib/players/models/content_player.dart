import 'package:design_patterns_players/players/enums/content_player_type.dart';

class ContentPlayer {
  final String id;
  final String nameContent;
  final ContentPlayerType type;

  ContentPlayer(
      {required this.id, required this.nameContent, required this.type});
}
