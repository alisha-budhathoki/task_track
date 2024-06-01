import 'package:flutter/material.dart';
import 'package:task_track/core/di/locator.dart';
import 'package:task_track/task_track_app.dart';

void main() {
  setupLocator();
  runApp(TaskTrackApp());
}
