import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../extensions/style_extension.dart';

class CosmoTextFormUnderline extends StatelessWidget {
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;
  final bool isDense;
  final bool enabled;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final VoidCallback? onEditingComplete;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final TextCapitalization textCapitalization;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final String? prefixText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforced;
  final int? errorMaxLines;
  final List<TextInputFormatter>? inputFormatters;
  final Color? enabledBorderColor;
  final bool readOnly;
  final Function? onTap;
  final double? suffixIconWidth;
  final double? suffixIconHeight;
  final bool disableSuffixIconConstraints;
  final bool isFilled;
  final Color? fillColor;
  final FloatingLabelBehavior floatingLabelBehavior;
  final FocusNode? focusNode;
  final bool autofocus;
  final TextAlign textAlign;
  final double cardRadius;
  final String? mainTitle;
  final FloatingLabelAlignment? floatingLabelAlignment;

  const CosmoTextFormUnderline({
    super.key,
    this.disableSuffixIconConstraints = false,
    this.obscureText = false,
    this.enableSuggestions = false,
    this.autocorrect = false,
    this.isDense = false,
    this.isFilled = false,
    this.enabled = true,
    this.autofocus = false,
    this.maxLengthEnforced,
    this.controller,
    this.textInputAction,
    this.keyboardType,
    this.hintText,
    this.labelText,
    this.helperText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixText,
    this.autofillHints,
    this.onEditingComplete,
    this.validator,
    this.onChanged,
    this.textCapitalization = TextCapitalization.none,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength,
    this.errorMaxLines,
    this.onFieldSubmitted,
    this.inputFormatters,
    this.readOnly = false,
    this.enabledBorderColor,
    this.onTap,
    this.suffixIconWidth,
    this.fillColor,
    this.suffixIconHeight,
    this.focusNode,
    this.textAlign = TextAlign.left,
    this.floatingLabelBehavior = FloatingLabelBehavior.auto,
    this.cardRadius = 12,
    this.mainTitle,
    this.floatingLabelAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (mainTitle != null) ...[
          Text(
            mainTitle.toString(),
            style: context.bodyLarge,
          ),
        ],
        TextFormField(
          textAlignVertical: TextAlignVertical.center,
          readOnly: readOnly,
          autofocus: autofocus,
          obscureText: obscureText,
          enableSuggestions: enableSuggestions,
          autocorrect: autocorrect,
          enabled: enabled,
          controller: controller,
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          cursorColor: context.primaryColor,
          cursorWidth: 1,
          focusNode: focusNode,
          autofillHints: autofillHints,
          onEditingComplete: onEditingComplete,
          validator: validator,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          textCapitalization: textCapitalization,
          maxLines: maxLines,
          minLines: minLines,
          maxLength: maxLength,
          textAlign: textAlign,
          maxLengthEnforcement: maxLengthEnforced,
          onTap: () {
            if (onTap != null) {
              onTap!();
            }
          },
          style: context.bodyMedium?.copyWith(color: context.onSurfaceColor),
          inputFormatters: inputFormatters ?? [],
          decoration: InputDecoration(
            isDense: isDense,
            hintText: hintText,
            labelText: labelText,
            errorText: errorText,
            helperText: helperText,
            prefixText: prefixText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: fillColor,
            filled: isFilled,
            floatingLabelBehavior: floatingLabelBehavior,
            suffixIconColor: context.onSurfaceVariantColor,
            prefixIconColor: context.onSurfaceVariantColor,
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: context.outlineColor.withValues(alpha: 0.4),
              ),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                width: 1,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                width: 1,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: context.outlineColor.withValues(alpha: 0.3),),
            ),
            errorStyle: context.bodySmall?.copyWith(color: context.errorColor),
            errorMaxLines: errorMaxLines,
            helperMaxLines: 5,
            helperStyle: context.bodySmall
                ?.copyWith(color: context.onSurfaceVariantColor),
            hintStyle: context.bodyMedium?.copyWith(
                color: context.onSurfaceVariantColor.withValues(alpha: 0.5),),
            prefixStyle: context.bodyMedium?.copyWith(
              color: context.onSurfaceColor.withValues(alpha: 0.5),
            ),
            floatingLabelAlignment: floatingLabelAlignment,
          ),
        ),
      ],
    );
  }
}
