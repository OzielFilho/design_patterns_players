import 'package:design_patterns_players/players/controllers/player_initialization_controller.dart';
import 'package:flutter/material.dart';

class PlayerLoadingPage extends StatefulWidget {
  final String _contentId;
  const PlayerLoadingPage({required String contentId, super.key})
      : _contentId = contentId;

  @override
  State<PlayerLoadingPage> createState() => _PlayerLoadingPageState();
}

class _PlayerLoadingPageState extends State<PlayerLoadingPage> {
  late PlayerInitializationController _playerInitializationController;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      _playerInitializationController = PlayerInitializationController(
          context: context, contentId: widget._contentId);
      _playerInitializationController.init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: CircularProgressIndicator(),
    ));
  }
}
