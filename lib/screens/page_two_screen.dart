import 'package:crossplatform6/screens/page_one_screen.dart';
import 'package:flutter/material.dart';

class PageTwoScreen extends StatefulWidget {
  const PageTwoScreen({super.key});
  @override
  State<PageTwoScreen> createState() => _PageTwoScreenState();
}

class _PageTwoScreenState extends State<PageTwoScreen> {

  void _goToPageOneScreen() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const PageOneScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Второй page'),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Вы находитесь на второй горизонтальной странице'),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: _goToPageOneScreen,
                child: const Icon(Icons.arrow_back),
              )
            ],
          ),
        )
    );
  }
}