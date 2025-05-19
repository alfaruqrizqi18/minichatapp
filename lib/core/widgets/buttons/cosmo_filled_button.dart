import 'package:flutter/material.dart';

import '../../extensions/style_extension.dart';


class CosmoFilledButton extends StatelessWidget {
  final Function onPressed;
  final dynamic title;
  final Widget? icon;
  final Color? buttonColor;
  final Color? textColor;
  const CosmoFilledButton({
    required this.onPressed,
    required this.title,
    this.buttonColor,
    this.textColor,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final titleWidget = Text(
          title,
          style: context.bodyMedium?.copyWith(
            fontSize: 14,
            color: textColor ?? context.onPrimaryColor,
          ),
        );
        final style = ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? context.primaryColor,
          elevation: 0.5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
            side: BorderSide(width: 0.5, color: context.outlineVariantColor),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        );
        final label = Builder(
          builder: (context) {
            if (title is String) {
              return titleWidget;
            }
            return title;
          },
        );
        if (icon != null) {
          return ElevatedButton.icon(
            icon: icon!,
            onPressed: () {
              onPressed();
            },
            style: style,
            label: label,
          );
        }
        return ElevatedButton(
          onPressed: () {
            onPressed();
          },
          style: style,
          child: label,
        );
      },
    );
  }
}
