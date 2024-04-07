import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class MapTwoScreen extends StatefulWidget {
  const MapTwoScreen({super.key});

  @override
  State<MapTwoScreen> createState() => _MapTwoScreenState();
}
class _MapTwoScreenState extends State<MapTwoScreen> {
  void _goToHomeScreen() {
    context.go('/');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Второй map'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Вы находитесь на уровне \\map_one\\map_two'),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _goToHomeScreen,
              child: const Text('Вернуться в начало'),
            )
          ],
        ),
      )
    );
  }
}