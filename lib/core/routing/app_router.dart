import 'package:go_router/go_router.dart';
import 'package:task_track/presentation/error_screen.dart';
import 'package:task_track/presentation/home/home_screen.dart';
import 'package:task_track/presentation/second_screen.dart';

class AppRouter {
  AppRouter()
      : router = GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeScreen(),
            ),
            GoRoute(
              path: '/secondScreen',
              builder: (context, state) => const SecondScreen(),
            )
          ],
          errorBuilder: (context, state) => ErrorScreen(
            errorMessage: state.error.toString(),
          ),
        );

  final GoRouter router;
}
