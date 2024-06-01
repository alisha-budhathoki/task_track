import 'package:flutter/material.dart';

import 'presentation/presentation_index.dart';

class TaskTrackApp extends StatelessWidget {
  const TaskTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
