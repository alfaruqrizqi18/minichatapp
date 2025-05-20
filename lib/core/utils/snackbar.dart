import 'package:flutter/material.dart';

import '../extensions/style_extension.dart';
import '../services/navigation_service.dart';


enum SnackBarType { error, success, general, warning }

void snackBar({
  required dynamic text,
  SnackBarType type = SnackBarType.general,
  Duration? duration,
  SnackBarAction? action,
}) {
  final context = globalCurrentContext;
  if (!context.mounted) return;
  Color contentColor = context.primaryColor;
  IconData icon = Icons.abc;
  if (type == SnackBarType.error) {
    contentColor = context.errorColor;
    icon = Icons.error_outline_rounded;
  } else if (type == SnackBarType.success) {
    contentColor = context.primaryColor;
    icon = Icons.check;
  } else if (type == SnackBarType.general) {
    contentColor = context.onSurfaceColor;
    icon = Icons.info;
  } else if (type == SnackBarType.warning) {
    contentColor = context.tertiaryColor;
    icon = Icons.warning;
  }
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: context.surfaceColor,
      elevation: 0.3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(width: 1, color: context.disabledColor),
      ),
      behavior: SnackBarBehavior.fixed,
      content: Row(
        children: [
          Icon(icon, color: contentColor),
          const SizedBox(width: 12),
          Expanded(
            child: Builder(
              builder: (context) {
                if (text is String) {
                  return Text(
                    text,
                    style: context.bodyMedium?.copyWith(color: contentColor),
                  );
                }
                return text;
              },
            ),
          ),
        ],
      ),
    ),
  );
}
