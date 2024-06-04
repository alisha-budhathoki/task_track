import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_track/core/core_index.dart';
import 'package:task_track/presentation/error_screen.dart';
import 'package:task_track/presentation/home/views/home_view.dart';
import 'package:task_track/presentation/second_screen.dart';

class AppRouter {
  AppRouter()
      : router = GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeView(),
              pageBuilder: (context, state) => _buildPage(
                state: state,
                const HomeView(),
                barrierDismissible: true,
              ),
            ),
            GoRoute(
              path: '/secondScreen',
              builder: (context, state) => const SecondScreen(),
              pageBuilder: (context, state) => _buildPage(
                state: state,
                const SecondScreen(),
                barrierDismissible: true,
              ),
            ),
          ],
          errorBuilder: (context, state) => ErrorScreen(
            errorMessage: state.error.toString(),
          ),
        );

  final GoRouter router;
}

Page _buildPage(
  Widget view, {
  required GoRouterState state,
  bool barrierDismissible = false,
}) {
  final child = SelectionArea(child: view);

  if (PlatformExtensions.isIos) return CupertinoPage(child: child);
  if (PlatformExtensions.isAndroid) return MaterialPage(child: child);
  return CustomTransitionPage(
    child: child,
    key: state.pageKey,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
