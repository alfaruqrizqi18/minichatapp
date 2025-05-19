import 'package:flutter/material.dart';

import '../../extensions/style_extension.dart';

class CosmoOutlinedCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? elevation;

  const CosmoOutlinedCard({
    super.key,
    required this.child,
    this.margin,
    this.borderColor,
    this.backgroundColor,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation ?? 0,
      shadowColor: context.shadowColor.withValues(alpha: 0.2),
      color: backgroundColor ?? context.surfaceColor,
      margin: margin,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderColor ?? context.outlineColor.withValues(alpha: .4),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: child,
    );
  }
}
