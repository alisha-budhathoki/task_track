import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_track/core/di/locator.dart';
import 'package:task_track/data/services/project_service/project_service.dart';
import 'package:task_track/presentation/home/cubits/project_list_cubit.dart';
import 'package:task_track/presentation/home/widgets/widget_index.dart';
import 'package:task_track/ui/theme/theme_index.dart';
import 'package:task_track/ui/ui_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.task,
          color: Palette.primary,
          size: 28.0,
        ),
        title: Text(
          'Task Track',
          style: TextStyles.h4.bold,
        ),
      ),
      body: BlocProvider(
        create: (context) =>
            ProjectListCubit(projectService: locator<ProjectService>())
              ..fetchAllTasks(),
        child: const ProjectListSection(),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Palette.light,
        backgroundColor: Palette.secondary,
        onPressed: () {
          _showCreateProjectDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showCreateProjectDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: const Text('Create New Project'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Project Name'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Description'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Create'),
            ),
          ],
        );
      },
    );
  }
}
