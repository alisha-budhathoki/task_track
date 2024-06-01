import 'package:flutter/material.dart';
import 'package:task_track/core/di/locator.dart';
import 'package:task_track/core/routing/routing_index.dart';

class TaskTrackApp extends StatelessWidget {
  TaskTrackApp({super.key});

  final AppRouter _appRouter = locator<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.router.routerDelegate,
      routeInformationParser: _appRouter.router.routeInformationParser,
      routeInformationProvider: _appRouter.router.routeInformationProvider,
    );
  }
}
