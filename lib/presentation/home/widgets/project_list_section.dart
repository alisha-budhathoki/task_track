import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_track/core/core_index.dart';
import 'package:task_track/presentation/home/cubits/project_cubit.dart';
import 'package:task_track/presentation/home/cubits/project_list_cubit.dart';
import 'package:task_track/ui/ui_index.dart';

class ProjectListSection extends StatelessWidget {
  const ProjectListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32.0),
          Text(
            'Projects',
            style: TextStyles.h3.bold,
          ),
          const SizedBox(height: 16.0),
          const _ProjectList(),
        ],
      ),
    );
  }
}

class _ProjectList extends StatelessWidget {
  const _ProjectList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ProjectListCubit, ProjectistState>(
        builder: (context, state) {
          return state.status.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            empty: () => const Center(child: Text('No projects Available')),
            error: () => const Center(child: Text('Error')),
            loaded: (projects) => GridView.builder(
              padding: const EdgeInsets.only(bottom: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.9,
              ),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final project = projects[index];
                return _buildGridItems(context, project);
              },
            ),
          );
        },
      ),
    );
  }
}

Widget _buildGridItems(BuildContext context, ProjectCubit project) {
  return GestureDetector(
    onTap: () {
      context.push(Routes.projectBoardViewWithId(project.initialProjecttVM.id));
    },
    child: FadeAnimation(
      durationMs: 300,
      child: SlideAnimation(
        begin: const Offset(0.0, 1.0),
        child: CustomCard(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.folder,
                  size: 48.0,
                  color: Palette.secondary,
                ),
                const SizedBox(height: 16.0),
                Text(
                  project.initialProjecttVM.name,
                  style: TextStyles.bodyLarge.bold,
                ),
                const SizedBox(height: 8.0),
                Text(
                  project.initialProjecttVM.name,
                  style: TextStyles.bodyRegular,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
