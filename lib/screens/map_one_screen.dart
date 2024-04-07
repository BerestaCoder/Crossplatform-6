import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class MapOneScreen extends StatefulWidget {
  const MapOneScreen({super.key});

  @override
  State<MapOneScreen> createState() => _MapOneScreenState();
}
class _MapOneScreenState extends State<MapOneScreen> {
  void _goToMapTwoScreen() {
    context.go('/map_one/map_two');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Первый map'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Вы находитесь на уровне \\map_one'),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _goToMapTwoScreen,
              child: const Text('Спуститься на уровень ниже'),
            )
          ],
        ),
      )
    );
  }
}