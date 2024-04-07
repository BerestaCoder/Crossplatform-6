import 'package:crossplatform6/screens/home_screen.dart';
import 'package:crossplatform6/screens/map_one_screen.dart';
import 'package:crossplatform6/screens/map_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        useMaterial3: true,
      ),
    );
  }
}
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'map_one',
          builder: (BuildContext context, GoRouterState state) {
            return const MapOneScreen();
          },
            routes: <RouteBase>[
              GoRoute(
                  path: 'map_two',
                  builder: (BuildContext context, GoRouterState state) {
                    return const MapTwoScreen();
                  },
              )
            ],
        ),
      ],
    ),
  ],
);