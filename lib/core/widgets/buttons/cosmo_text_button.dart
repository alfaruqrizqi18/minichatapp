import 'package:flutter/material.dart';

import '../../extensions/style_extension.dart';


class CosmoTextButton extends StatelessWidget {
  final Function onPressed;
  final dynamic title;
  final Color? textColor;
  const CosmoTextButton({
    required this.onPressed,
    required this.title,
    this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        onPressed();
      },
      child: Builder(
        builder: (context) {
          if (title is String) {
            return Text(
              title,
              style: context.bodyMedium?.copyWith(
                fontSize: 15,
                color: textColor ?? context.primaryColor,
              ),
            );
          }
          return title;
        },
      ),
    );
  }
}
