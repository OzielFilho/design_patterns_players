import 'package:design_patterns_players/players/controllers/player_controller.dart';
import 'package:design_patterns_players/players/factories/player_factory.dart';
import 'package:design_patterns_players/players/observers/player_observer.dart';
import 'package:flutter/material.dart';

class PlayerPage extends StatefulWidget {
  final PlayerFactory? _playerFactory;
  const PlayerPage({required PlayerFactory? factory, super.key})
      : _playerFactory = factory;

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  PlayerController? get _playerController =>
      widget._playerFactory?.createPlayerController;
  PlayerObserver? get _playerObserver =>
      widget._playerFactory?.createPlayerObserver;

  @override
  void initState() {
    super.initState();
    _playerController?.init();
    _playerObserver?.notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Player Page'),
        centerTitle: true,
      ),
      body: Center(
        child: widget._playerFactory?.createPlayerViewBuilder.buildPlayerView,
      ),
    );
  }
}
