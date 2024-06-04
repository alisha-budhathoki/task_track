import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track/ui/ui_index.dart';

class EmptyWidget extends StatelessWidget {
  final String message;

  const EmptyWidget({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.hourglass_empty),
          const SizedBox(height: 8.0),
          Text(
            'You haven’t added any tasks for this day.',
            style: TextStyles.bodyRegular.withColor(Palette.textDisabled),
          ),
        ],
      ),
    );
  }
}
