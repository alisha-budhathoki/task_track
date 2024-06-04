import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track/core/di/locator.dart';
import 'package:task_track/core/routing/routing_index.dart';
import 'package:task_track/data/services/project_service/project_service.dart';
import 'package:task_track/data/services/task_service/task_service_impl.dart';
import 'package:task_track/presentation/home/cubits/project_cubit.dart';
import 'package:task_track/presentation/home/cubits/project_list_cubit.dart';
import 'package:task_track/presentation/project_board/cubits/task_cubit.dart';
import 'package:task_track/ui/ui_index.dart';

class TaskTrackApp extends StatelessWidget {
  TaskTrackApp({super.key});

  final AppRouter _appRouter = locator<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ProjectCubit(
            projectService: locator<ProjectService>(),
          ),
        ),
        BlocProvider(
          create: (context) => ProjectListCubit(
            projectService: locator<ProjectService>(),
          )..fetchAllTasks(),
        ),
        BlocProvider(
          create: (context) => TaskCubit(locator<TaskServiceImpl>()),
        ),
      ],
      child: MaterialApp.router(
        theme: AppTheme.lightTheme,
        routerDelegate: _appRouter.router.routerDelegate,
        routeInformationParser: _appRouter.router.routeInformationParser,
        routeInformationProvider: _appRouter.router.routeInformationProvider,
      ),
    );
  }
}
