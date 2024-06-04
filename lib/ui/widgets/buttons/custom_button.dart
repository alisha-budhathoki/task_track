import 'package:flutter/material.dart';
import 'package:task_track/ui/ui_index.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry contentPadding;
  final double borderRadius;
  final double elevation;
  final Color color;
  final Color disabledColor;

  const CustomButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.contentPadding = EdgeInsets.zero,
    this.disabledColor = Palette.textDisabled,
    this.color = Palette.primary,
    this.elevation = 0.0,
    this.borderRadius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith(
          (state) {
            if (state.contains(WidgetState.disabled)) {
              return disabledColor;
            }
            return color;
          },
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        elevation: WidgetStateProperty.all(elevation),
      ),
      child: Padding(
        padding: contentPadding,
        child: child,
      ),
    );
  }
}
