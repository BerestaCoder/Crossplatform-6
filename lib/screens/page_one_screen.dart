import 'package:crossplatform6/screens/page_two_screen.dart';
import 'package:flutter/material.dart';

class PageOneScreen extends StatefulWidget {
  const PageOneScreen({super.key});
  @override
  State<PageOneScreen> createState() => _PageOneScreenState();
}
class _PageOneScreenState extends State<PageOneScreen> {

  void _goToPageTwoScreen() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) =>const PageTwoScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Первый page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Вы находитесь на первой горизонтальной странице'),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _goToPageTwoScreen,
              child: const Icon(Icons.arrow_forward),
            )
          ],
        ),
      )
    );
  }
}