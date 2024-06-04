import 'package:flutter/material.dart';

class CustomDialog extends StatefulWidget {
  final String title;
  final Widget content;
  final String firstActionText;
  final VoidCallback onPressedFirstAction;
  final String secondActionText;
  final VoidCallback onPressedSecondAction;
  final bool isSecondActionEnabled;

  const CustomDialog({
    required this.title,
    required this.content,
    required this.firstActionText,
    required this.onPressedFirstAction,
    required this.secondActionText,
    required this.onPressedSecondAction,
    required this.isSecondActionEnabled,
  });

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: widget.content,
      actions: [
        TextButton(
          onPressed: widget.onPressedFirstAction,
          child: Text(widget.firstActionText),
        ),
        TextButton(
          onPressed: widget.isSecondActionEnabled
              ? widget.onPressedSecondAction
              : null,
          child: Text(widget.secondActionText),
        ),
      ],
    );
  }
}
