import 'package:flutter/material.dart';

import '../../extensions/style_extension.dart';

class CosmoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final dynamic title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final PreferredSizeWidget? bottom;
  final bool centerTitle;
  final double paddingRightActionButtons;
  final double? titleSpacing;

  const CosmoAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.bottom,
    this.centerTitle = true,
    this.paddingRightActionButtons = 20,
    this.titleSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: context.surfaceTintColor,
      backgroundColor: context.surfaceColor,
      iconTheme: IconThemeData(color: context.onSurfaceColor, size: 24),
      actionsIconTheme: IconThemeData(color: context.onSurfaceVariantColor),
      bottom: bottom,
      title: Builder(
        builder: (ctx) {
          if (title is String) {
            return Text(
              title,
              maxLines: 2,
              textAlign: centerTitle ? TextAlign.center : TextAlign.start,
              style: context.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.onSurfaceColor,
              ),
            );
          }
          if (title is Widget) {
            return title;
          }
          return const SizedBox();
        },
      ),
      scrolledUnderElevation: 1,
      shadowColor: context.shadowColor,
      leading: leading,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: actions ?? [],
          ),
        ),
      ],
      centerTitle: centerTitle,
      automaticallyImplyLeading: automaticallyImplyLeading,
      titleSpacing: titleSpacing,
    );
  }

  @override
  Size get preferredSize {
    if (bottom == null) {
      return const Size.fromHeight(64);
    }
    return Size.fromHeight(bottom!.preferredSize.height);
  }
}
