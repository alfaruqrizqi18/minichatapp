import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class MaterialTheme {
  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff006a67),
      surfaceTint: Color(0xff006a67),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6fdbd7),
      onPrimaryContainer: Color(0xff00403e),
      secondary: Color(0xff406563),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc6eeeb),
      onSecondaryContainer: Color(0xff2b504f),
      tertiary: Color(0xff715093),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffdebbff),
      onTertiaryContainer: Color(0xff482869),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff6faf9),
      onBackground: Color(0xff171d1c),
      surface: Color(0xfff6faf9),
      onSurface: Color(0xff171d1c),
      surfaceVariant: Color(0xffd8e5e4),
      onSurfaceVariant: Color(0xff3d4948),
      outline: Color(0xff6d7978),
      outlineVariant: Color(0xffbcc9c8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3131),
      inverseOnSurface: Color(0xffedf2f0),
      inversePrimary: Color(0xff6cd7d3),
      primaryFixed: Color(0xff89f4f0),
      onPrimaryFixed: Color(0xff00201f),
      primaryFixedDim: Color(0xff6cd7d3),
      onPrimaryFixedVariant: Color(0xff00504e),
      secondaryFixed: Color(0xffc2eae8),
      onSecondaryFixed: Color(0xff00201f),
      secondaryFixedDim: Color(0xffa7cecc),
      onSecondaryFixedVariant: Color(0xff274d4b),
      tertiaryFixed: Color(0xfff0dbff),
      onTertiaryFixed: Color(0xff2a064a),
      tertiaryFixedDim: Color(0xffdcb8ff),
      onTertiaryFixedVariant: Color(0xff583879),
      surfaceDim: Color(0xffd6dbda),
      surfaceBright: Color(0xfff6faf9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5f3),
      surfaceContainer: Color(0xffeaefee),
      surfaceContainerHigh: Color(0xffe4e9e8),
      surfaceContainerHighest: Color(0xffdfe3e2),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004b49),
      surfaceTint: Color(0xff006a67),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00827f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff234947),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff567b79),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff543475),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8866ab),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6faf9),
      onBackground: Color(0xff171d1c),
      surface: Color(0xfff6faf9),
      onSurface: Color(0xff171d1c),
      surfaceVariant: Color(0xffd8e5e4),
      onSurfaceVariant: Color(0xff394544),
      outline: Color(0xff556160),
      outlineVariant: Color(0xff717d7c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3131),
      inverseOnSurface: Color(0xffedf2f0),
      inversePrimary: Color(0xff6cd7d3),
      primaryFixed: Color(0xff00827f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff006765),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff567b79),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3d6261),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff8866ab),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6e4d90),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbda),
      surfaceBright: Color(0xfff6faf9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5f3),
      surfaceContainer: Color(0xffeaefee),
      surfaceContainerHigh: Color(0xffe4e9e8),
      surfaceContainerHighest: Color(0xffdfe3e2),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff002726),
      surfaceTint: Color(0xff006a67),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004b49),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002726),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff234947),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff311051),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff543475),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6faf9),
      onBackground: Color(0xff171d1c),
      surface: Color(0xfff6faf9),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffd8e5e4),
      onSurfaceVariant: Color(0xff1b2625),
      outline: Color(0xff394544),
      outlineVariant: Color(0xff394544),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3131),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xff93fef9),
      primaryFixed: Color(0xff004b49),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003332),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff234947),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff093231),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff543475),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3c1c5d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbda),
      surfaceBright: Color(0xfff6faf9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5f3),
      surfaceContainer: Color(0xffeaefee),
      surfaceContainerHigh: Color(0xffe4e9e8),
      surfaceContainerHighest: Color(0xffdfe3e2),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8cf6f2),
      surfaceTint: Color(0xff6cd7d3),
      onPrimary: Color(0xff003736),
      primaryContainer: Color(0xff5fccc8),
      onPrimaryContainer: Color(0xff003433),
      secondary: Color(0xffa7cecc),
      onSecondary: Color(0xff0e3635),
      secondaryContainer: Color(0xff1d4341),
      onSecondaryContainer: Color(0xffb0d8d6),
      tertiary: Color(0xfff2e0ff),
      onTertiary: Color(0xff402061),
      tertiaryContainer: Color(0xffd3adf8),
      onTertiaryContainer: Color(0xff3f1f5f),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff0f1414),
      onBackground: Color(0xffdfe3e2),
      surface: Color(0xff0f1414),
      onSurface: Color(0xffdfe3e2),
      surfaceVariant: Color(0xff3d4948),
      onSurfaceVariant: Color(0xffbcc9c8),
      outline: Color(0xff879392),
      outlineVariant: Color(0xff3d4948),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e2),
      inverseOnSurface: Color(0xff2c3131),
      inversePrimary: Color(0xff006a67),
      primaryFixed: Color(0xff89f4f0),
      onPrimaryFixed: Color(0xff00201f),
      primaryFixedDim: Color(0xff6cd7d3),
      onPrimaryFixedVariant: Color(0xff00504e),
      secondaryFixed: Color(0xffc2eae8),
      onSecondaryFixed: Color(0xff00201f),
      secondaryFixedDim: Color(0xffa7cecc),
      onSecondaryFixedVariant: Color(0xff274d4b),
      tertiaryFixed: Color(0xfff0dbff),
      onTertiaryFixed: Color(0xff2a064a),
      tertiaryFixedDim: Color(0xffdcb8ff),
      onTertiaryFixedVariant: Color(0xff583879),
      surfaceDim: Color(0xff0f1414),
      surfaceBright: Color(0xff353a3a),
      surfaceContainerLowest: Color(0xff0a0f0f),
      surfaceContainerLow: Color(0xff171d1c),
      surfaceContainer: Color(0xff1b2120),
      surfaceContainerHigh: Color(0xff262b2b),
      surfaceContainerHighest: Color(0xff303635),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8cf6f2),
      surfaceTint: Color(0xff6cd7d3),
      onPrimary: Color(0xff003230),
      primaryContainer: Color(0xff5fccc8),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffabd2d0),
      onSecondary: Color(0xff001a19),
      secondaryContainer: Color(0xff729896),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff2e0ff),
      onTertiary: Color(0xff3c1c5d),
      tertiaryContainer: Color(0xffd3adf8),
      onTertiaryContainer: Color(0xff000001),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0f1414),
      onBackground: Color(0xffdfe3e2),
      surface: Color(0xff0f1414),
      onSurface: Color(0xfff7fcfa),
      surfaceVariant: Color(0xff3d4948),
      onSurfaceVariant: Color(0xffc0cdcc),
      outline: Color(0xff99a5a4),
      outlineVariant: Color(0xff798684),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e2),
      inverseOnSurface: Color(0xff262b2b),
      inversePrimary: Color(0xff00514f),
      primaryFixed: Color(0xff89f4f0),
      onPrimaryFixed: Color(0xff001414),
      primaryFixedDim: Color(0xff6cd7d3),
      onPrimaryFixedVariant: Color(0xff003d3c),
      secondaryFixed: Color(0xffc2eae8),
      onSecondaryFixed: Color(0xff001414),
      secondaryFixedDim: Color(0xffa7cecc),
      onSecondaryFixedVariant: Color(0xff153c3b),
      tertiaryFixed: Color(0xfff0dbff),
      onTertiaryFixed: Color(0xff1d0039),
      tertiaryFixedDim: Color(0xffdcb8ff),
      onTertiaryFixedVariant: Color(0xff462667),
      surfaceDim: Color(0xff0f1414),
      surfaceBright: Color(0xff353a3a),
      surfaceContainerLowest: Color(0xff0a0f0f),
      surfaceContainerLow: Color(0xff171d1c),
      surfaceContainer: Color(0xff1b2120),
      surfaceContainerHigh: Color(0xff262b2b),
      surfaceContainerHighest: Color(0xff303635),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeafffd),
      surfaceTint: Color(0xff6cd7d3),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff70dcd8),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeafffd),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffabd2d0),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fc),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffdfbdff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0f1414),
      onBackground: Color(0xffdfe3e2),
      surface: Color(0xff0f1414),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff3d4948),
      onSurfaceVariant: Color(0xfff0fdfc),
      outline: Color(0xffc0cdcc),
      outlineVariant: Color(0xffc0cdcc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e2),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff00302f),
      primaryFixed: Color(0xff8ef8f4),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff70dcd8),
      onPrimaryFixedVariant: Color(0xff001a19),
      secondaryFixed: Color(0xffc7efec),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffabd2d0),
      onSecondaryFixedVariant: Color(0xff001a19),
      tertiaryFixed: Color(0xfff3e0ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffdfbdff),
      onTertiaryFixedVariant: Color(0xff240045),
      surfaceDim: Color(0xff0f1414),
      surfaceBright: Color(0xff353a3a),
      surfaceContainerLowest: Color(0xff0a0f0f),
      surfaceContainerLow: Color(0xff171d1c),
      surfaceContainer: Color(0xff1b2120),
      surfaceContainerHigh: Color(0xff262b2b),
      surfaceContainerHighest: Color(0xff303635),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: GoogleFonts.interTextTheme(),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
