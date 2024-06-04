import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_track/presentation/home/cubits/project_cubit.dart';
import 'package:task_track/presentation/home/widgets/widget_index.dart';
import 'package:task_track/ui/ui_index.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  final TextEditingController _controller = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _showCreateProjectDialog(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 100)); // Small delay
    if (context.mounted)
      showDialog(
        context: context,
        builder: (dialogContext) => StatefulBuilder(
          builder: (context, setState) {
            return CustomDialog(
              title: 'Create new Project',
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        _isButtonEnabled = _controller.text.isNotEmpty;
                      });
                    },
                    controller: _controller,
                    decoration:
                        const InputDecoration(labelText: 'Project Name'),
                  ),
                ],
              ),
              firstActionText: 'Cancel',
              onPressedFirstAction: () {
                dialogContext.pop();
              },
              secondActionText: 'Create',
              onPressedSecondAction: () {
                context
                    .read<ProjectCubit>()
                    .addProject(projectName: _controller.text);
                dialogContext.pop();
              },
              isSecondActionEnabled: _isButtonEnabled,
            );
          },
        ),
      ).then((_) {
        _controller.clear(); // Clear the text field when the dialog is closed
        setState(() {
          _isButtonEnabled = false; // Reset the button state
        });
      }).catchError((error) {
        print("Error closing dialog: $error");
      });
  }

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
      body: const ProjectListSection(),
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
