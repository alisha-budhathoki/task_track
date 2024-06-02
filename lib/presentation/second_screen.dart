import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String projectName = 'project name';

    return Scaffold(
      appBar: AppBar(
        title: Text(projectName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Center(
        child: Hero(
          tag: 'project-icon-${projectName.split(' ')[1]}',
          child: Icon(Icons.folder, size: 100, color: Colors.blue),
        ),
      ),
    );
  }
}
