import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_track/core/di/locator.dart';
import 'package:task_track/core/routing/routing_index.dart';
import 'package:task_track/data/services/task_service/task_service_impl.dart';
import 'package:task_track/presentation/project_board/cubits/task_cubit.dart';
import 'package:task_track/presentation/project_board/widgets/task_list.dart';

class ProjectBoardView extends StatelessWidget {
  final String projectId;

  const ProjectBoardView({
    super.key,
    required this.projectId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              size: 28.0,
            ),
            onPressed: () => _navigateToAddTaskView(context),
            tooltip: 'Add Task',
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => TaskCubit(locator<TaskServiceImpl>()),
        child: TaskList(),
      ),
    );
  }

  void _navigateToAddTaskView(BuildContext context) {
    context.push(Routes.addTask, extra: projectId);
  }
}
