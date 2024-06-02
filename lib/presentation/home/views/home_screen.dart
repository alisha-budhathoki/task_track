import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_track/core/routing/routing_index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Home screen'),
          ElevatedButton(
            onPressed: () {
              context.go(Routes.secondScreen);
            },
            child: const Text('Go to second screen'),
          )
        ],
      ),
    ));
  }
}
