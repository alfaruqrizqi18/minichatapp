import 'package:flutter/material.dart';

import '../../extensions/style_extension.dart';


class CosmoFilledCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final bool useBorder;
  final double borderRadius;
  final Color? backgroundColor;

  const CosmoFilledCard({
    super.key,
    required this.child,
    this.margin,
    this.useBorder = false,
    this.borderRadius = 12,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: margin,
      color: backgroundColor ?? context.surfaceColor,
      shape: useBorder
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: BorderSide(
                color: context.outlineColor.withValues(alpha:0.4),
                width: 0.5,
              ),
            )
          : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
      child: child,
    );
  }
}
