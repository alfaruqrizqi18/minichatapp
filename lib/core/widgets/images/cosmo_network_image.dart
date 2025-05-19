import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../cosmo_adaptive_progress_indicator.dart';

class CosmoNetworkImage extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Widget? placeholderWidget;
  final ProgressIndicatorBuilder? progressIndicatorBuilder;
  final Widget? errorWidget;
  final Color? color;
  final double? defaultErrorIconSize;
  final Alignment? alignment;
  final bool emptyErrorWidget;
  final bool emptyPlaceholderWidget;
  final bool emptyProgressWidget;
  final BorderRadius borderRadius;
  final Border? border;

  const CosmoNetworkImage(
    this.url, {
    super.key,
    this.height,
    this.width,
    this.fit,
    this.placeholderWidget,
    this.progressIndicatorBuilder,
    this.errorWidget,
    this.color,
    this.defaultErrorIconSize = 24,
    this.alignment,
    this.emptyErrorWidget = false,
    this.emptyPlaceholderWidget = false,
    this.emptyProgressWidget = false,
    this.borderRadius = BorderRadius.zero,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) {
      return errorWidget ??
          Icon(
            Icons.image_not_supported_outlined,
            size: defaultErrorIconSize,
            color: color,
          );
    }

    if (url.endsWith("svg")) {
      return SvgPicture.network(
        url,
        height: height,
        width: width,
        fit: fit ?? BoxFit.contain,
        alignment: alignment ?? Alignment.center,
        placeholderBuilder:
            (placeholderWidget != null) ? (_) => placeholderWidget! : null,
      );
    }

    return Container(
      decoration: BoxDecoration(borderRadius: borderRadius, border: border),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: CachedNetworkImage(
          imageUrl: url,
          height: height,
          width: width,
          fit: fit,
          color: color,
          alignment: alignment ?? Alignment.center,
          progressIndicatorBuilder: progressIndicatorBuilder,
          placeholder:
              (placeholderWidget != null)
                  ? (_, __) => placeholderWidget!
                  : null,
          errorWidget: (_, __, ___) {
            if (errorWidget != null) {
              return errorWidget!;
            }
            return (emptyErrorWidget)
                ? const SizedBox()
                : Icon(
                  Icons.image_not_supported_outlined,
                  size: defaultErrorIconSize,
                  color: color,
                );
          },
        ),
      ),
    );
  }
}

Widget defaultInfiniteProgressWidget = const Center(
  child: CosmoProgressIndicator(),
);

Widget defaultValueProgressWidget(double? progress) =>
    Center(child: CosmoProgressIndicator(value: progress));

Widget defaultPlaceHolderWithProgressWidget(Color color) => Container(
  color: color,
  alignment: Alignment.center,
  child: const CosmoProgressIndicator(),
);
