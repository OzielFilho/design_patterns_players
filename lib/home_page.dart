import 'package:design_patterns_players/players/player_loading_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _navigateToPlayerLoading(String id) => Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PlayerLoadingPage(contentId: id)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () => _navigateToPlayerLoading('1234'),
                  child: Card(
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          child: const Text('Player de Video')))),
              const SizedBox(height: 20),
              InkWell(
                  onTap: () => _navigateToPlayerLoading('5678'),
                  child: Card(
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          child: const Text('Player de Música')))),
            ],
          ),
        ),
      ),
    );
  }
}
