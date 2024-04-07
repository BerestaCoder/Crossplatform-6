import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:crossplatform6/screens/page_one_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void _goToPageNavigationScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const PageOneScreen()));
  }
  void _goToMapNavigationScreen() {
    context.go('/map_one');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Навигация'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Вы находитесь на домашней странице'),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _goToPageNavigationScreen, child: const Icon(Icons.description_outlined)),
                ElevatedButton(onPressed: _goToMapNavigationScreen, child: const Icon(Icons.map_outlined)),
              ],
            )
          ],
        )
      ),
    );
  }
}