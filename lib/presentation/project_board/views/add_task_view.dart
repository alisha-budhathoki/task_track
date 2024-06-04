import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_track/presentation/project_board/cubits/task_cubit.dart';
import 'package:task_track/ui/ui_index.dart';

class AddTaskView extends StatefulWidget {
  final String projectId;

  const AddTaskView({super.key, required this.projectId});

  @override
  AddTaskViewState createState() => AddTaskViewState();
}

class AddTaskViewState extends State<AddTaskView> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _titleController;
  late TextEditingController _definitionController;
  String _status = 'Not Started';
  DateTime? _startTime;
  DateTime? _endTime;
  int _duration = 0;

  Timer? _timer;
  int _elapsedSeconds = 0;
  bool _isTimerRunning = false;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _definitionController = TextEditingController();

    _titleController.addListener(_updateCreateButtonState);
    _definitionController.addListener(_updateCreateButtonState);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _definitionController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _elapsedSeconds++;
        _duration = (_elapsedSeconds / 60).round();
      });
    });
    setState(() {
      _isTimerRunning = true;
      _startTime = DateTime.now();
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    setState(() {
      _isTimerRunning = false;
      _status = 'Done';
      _endTime = DateTime.now();
    });
  }

  String get _elapsedTime {
    final minutes = (_elapsedSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (_elapsedSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  bool get _isCreateButtonEnabled {
    return _titleController.text.isNotEmpty &&
        _definitionController.text.isNotEmpty &&
        _status.isNotEmpty;
  }

  void _updateCreateButtonState() {
    setState(() {
      // This empty setState forces a rebuild to update the button state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Task')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  hintText: 'Enter task title',
                ),
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _definitionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  hintText: 'Enter task description',
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              _buildTimerAndDropdown(),
              const SizedBox(height: 16.0),
              CustomButton(
                onPressed: _isCreateButtonEnabled ? _submitForm : null,
                disabledColor: Palette.textDisabled,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'Create Task',
                    style: TextStyles.h4.bold.withColor(Palette.light),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimerAndDropdown() {
    return Row(
      children: [
        Expanded(
          child: DropdownButtonFormField<String>(
            value: _status,
            items: ['Not Started', 'In Progress', 'Done']
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (value) {
              setState(() => _status = value!);
              if (value == 'In Progress' && !_isTimerRunning) {
                _startTimer();
              }
              _updateCreateButtonState();
            },
            decoration: const InputDecoration(
              labelText: 'Status',
              hintText: 'Select task status',
            ),
          ),
        ),
        if (_isTimerRunning)
          Row(
            children: [
              const SizedBox(width: 16.0),
              Text(
                _elapsedTime,
                style: TextStyles.h4.bold,
              ),
              IconButton(
                icon: const Icon(Icons.stop, color: Palette.error),
                onPressed: _stopTimer,
              ),
            ],
          ),
      ],
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      context.read<TaskCubit>().createTask(
            title: _titleController.text,
            definition: _definitionController.text,
            status: _status,
            startTime: _startTime ??
                (_status == 'In Progress' ? DateTime.now() : null),
            endTime: _endTime ?? (_status == 'Done' ? DateTime.now() : null),
            duration: _duration,
          );
      context.pop(); // Go back to the previous screen
    }
  }
}
