import 'package:flutter/material.dart';

import '../../extensions/style_extension.dart';

class CosmoTonalButton extends StatelessWidget {
  final Function onPressed;
  final dynamic title;
  final double radius;
  final Widget? icon;
  final Color? buttonColor;
  final Color? textColor;
  const CosmoTonalButton({
    required this.onPressed,
    required this.title,
    this.buttonColor,
    this.textColor,
    this.icon,
    this.radius = 40,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (icon != null) {
          return ElevatedButton.icon(
            icon: icon!,
            onPressed: () {
              onPressed();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor ?? context.primaryColor,
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
                // side: BorderSide(
                //   width: 0.5,
                //   color: context.outlineVariantColor,
                // ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            ),
            label: Builder(
              builder: (context) {
                if (title is String) {
                  return Text(
                    title,
                    style: context.bodyMedium?.copyWith(
                      fontSize: 15,
                      color: textColor ?? context.onPrimaryColor,
                    ),
                  );
                }
                return title;
              },
            ),
          );
        }
        return ElevatedButton(
          onPressed: () {
            onPressed();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor ?? context.surfaceVariantColor,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              // side: BorderSide(
              //   width: 0.5,
              //   color: context.outlineVariantColor,
              // ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          ),
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
      },
    );
  }
}
