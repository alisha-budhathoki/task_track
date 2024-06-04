import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:task_track/data/models/local_models/tasks/task_model.dart';
import 'package:task_track/presentation/project_board/cubits/task_cubit.dart';
import 'package:task_track/ui/ui_index.dart';
import 'package:task_track/ui/widgets/empty_widget.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TaskCubit>().getAllTasks();
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          empty: () => const EmptyWidget(
            message:
                "Let's get productive! Add a task and start making progress.",
          ),
          success: (tasks) => TaskListView(tasks: tasks),
          error: (message) => EmptyWidget(message: message),
        );
      },
    );
  }
}

class TaskListView extends StatelessWidget {
  final List<Task> tasks;

  const TaskListView({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) {
        final task = tasks[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: TaskCard(task: task),
        );
      },
    );
  }
}

class TaskCard extends StatefulWidget {
  final Task task;

  const TaskCard({super.key, required this.task});

  @override
  TaskCardState createState() => TaskCardState();
}

class TaskCardState extends State<TaskCard> {
  late Stopwatch _stopwatch;
  Timer _timer = Timer(Duration.zero, () {});
  String _status = '';

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _status = widget.task.status;
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTask() {
    if (_status != 'In Progress') {
      // context.read<TaskCubit>().startTask(widget.task.id.hexString);
      _stopwatch.start();
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {});
      });
      setState(() {
        _status = 'In Progress';
      });
    }
  }

  void _completeTask() {
    if (_status != 'Completed') {
      // context.read<TaskCubit>().completeTask(widget.task.id.hexString);
      _stopwatch.stop();
      _timer.cancel();
      setState(() {
        _status = 'Done';
      });
    }
  }

  String _formattedElapsedTime() {
    final duration = _stopwatch.elapsed;
    return '${duration.inHours}:${(duration.inMinutes % 60).toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  Color _getStatusColor() {
    switch (_status) {
      case 'Not Started':
        return Palette.textDisabled;
      case 'In Progress':
        return Palette.blueColor;
      case 'Done':
        return Palette.success;
      default:
        return Palette.dark;
    }
  }

  String _formatDateTime(DateTime? dateTime) {
    if (dateTime == null) return 'N/A';
    return DateFormat('MMM d, y - h:mm a').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: ExpansionTile(
        tilePadding: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        collapsedBackgroundColor: Colors.transparent,
        title: _buildTopHeader(),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            widget.task.definition,
            style:
                TextStyles.bodyRegular.italic.withColor(Palette.textDisabled),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        children: [
          _buildExpandedSection(),
        ],
      ),
    );
  }

  Padding _buildExpandedSection() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoRow(
            Icons.access_time,
            'Duration: ${widget.task.duration} minutes',
          ),
          _buildInfoRow(
            Icons.play_arrow,
            'Start: ${_formatDateTime(widget.task.startTime)}',
          ),
          _buildInfoRow(
            Icons.stop,
            'End: ${_formatDateTime(widget.task.endTime)}',
          ),
          _buildInfoRow(
            Icons.timer,
            'Elapsed Time: ${_formattedElapsedTime()}',
          ),
          const SizedBox(height: 16),
          _buildFooterButtons(),
        ],
      ),
    );
  }

  Widget _buildFooterButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton.icon(
          onPressed: _startTask,
          icon: const Icon(Icons.play_arrow),
          label: const Text('Start'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Palette.blueColor,
          ),
        ),
        ElevatedButton.icon(
          onPressed: _completeTask,
          icon: const Icon(Icons.check),
          label: const Text('Complete'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Palette.success,
          ),
        ),
      ],
    );
  }

  Widget _buildTopHeader() {
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.task.title,
            style: TextStyles.h4.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: _getStatusColor(),
            borderRadius: BorderRadius.circular(20),
          ),
          child: DropdownButton<String>(
            value: _status,
            items: ['Not Started', 'In Progress', 'Done']
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (value) {
              setState(() {
                _status = value!;
              });
              if (value == 'In Progress' && !_stopwatch.isRunning) {
                _startTask();
              } else if (value == 'Done' && _stopwatch.isRunning) {
                _completeTask();
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icon, color: Palette.textDisabled),
          const SizedBox(width: 8),
          Text(text, style: TextStyles.bodyRegular),
        ],
      ),
    );
  }
}
