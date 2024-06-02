import 'package:flutter/material.dart';
import 'package:task_track/ui/theme/theme_index.dart';
import 'package:task_track/ui/ui_index.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double elevation;
  final double borderRadius;
  final Color? color;
  final Color? borderColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double borderWidth;
  final bool hideDecoration;

  const CustomCard({
    super.key,
    required this.child,
    this.margin,
    this.padding,
    this.color,
    this.borderColor,
    this.elevation = 2.0,
    this.borderRadius = 8.0,
    this.borderWidth = 1.0,
    this.hideDecoration = false,
  });

  @override
  Widget build(BuildContext context) {
    final effectivePadding = padding ?? const EdgeInsets.all(16.0);
    final effectiveMargin =
        margin ?? const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0);

    return FadeAnimation(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: effectiveMargin,
        padding: effectivePadding,
        clipBehavior: hideDecoration ? Clip.none : Clip.antiAlias,
        decoration: hideDecoration ? null : _getDecoration(context),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: child,
        ),
      ),
    );
  }

  BoxDecoration _getDecoration(BuildContext context) {
    final effectiveBorderColor = borderColor ?? Palette.textDisabled;

    return BoxDecoration(
      color: color ?? Palette.light,
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(
        color: effectiveBorderColor,
        strokeAlign: BorderSide.strokeAlignOutside,
        width: borderWidth,
      ),
      boxShadow: [
        if (elevation > 0.0)
          BoxShadow(
            blurRadius: 8.0,
            spreadRadius: elevation,
            offset: const Offset(0.0, 2.0),
            color: Palette.textDisabled.withOpacity(0.05),
          ),
      ],
    );
  }
}
