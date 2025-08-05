// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_arrow_up_down.svg
  SvgGenImage get icArrowUpDown =>
      const SvgGenImage('assets/icons/ic_arrow_up_down.svg');

  /// File path: assets/icons/ic_back.svg
  SvgGenImage get icBack => const SvgGenImage('assets/icons/ic_back.svg');

  /// File path: assets/icons/ic_checked.svg
  SvgGenImage get icChecked => const SvgGenImage('assets/icons/ic_checked.svg');

  /// File path: assets/icons/ic_down.svg
  SvgGenImage get icDown => const SvgGenImage('assets/icons/ic_down.svg');

  /// File path: assets/icons/ic_edit.svg
  SvgGenImage get icEdit => const SvgGenImage('assets/icons/ic_edit.svg');

  /// File path: assets/icons/ic_pause.svg
  SvgGenImage get icPause => const SvgGenImage('assets/icons/ic_pause.svg');

  /// File path: assets/icons/ic_plus.svg
  SvgGenImage get icPlus => const SvgGenImage('assets/icons/ic_plus.svg');

  /// File path: assets/icons/ic_project_char.svg
  SvgGenImage get icProjectChar =>
      const SvgGenImage('assets/icons/ic_project_char.svg');

  /// File path: assets/icons/ic_projects.svg
  SvgGenImage get icProjects =>
      const SvgGenImage('assets/icons/ic_projects.svg');

  /// File path: assets/icons/ic_settings.svg
  SvgGenImage get icSettings =>
      const SvgGenImage('assets/icons/ic_settings.svg');

  /// File path: assets/icons/ic_star_char.svg
  SvgGenImage get icStarChar =>
      const SvgGenImage('assets/icons/ic_star_char.svg');

  /// File path: assets/icons/ic_star_char_filled.svg
  SvgGenImage get icStarCharFilled =>
      const SvgGenImage('assets/icons/ic_star_char_filled.svg');

  /// File path: assets/icons/ic_stop.svg
  SvgGenImage get icStop => const SvgGenImage('assets/icons/ic_stop.svg');

  /// File path: assets/icons/ic_timer_char.svg
  SvgGenImage get icTimerChar =>
      const SvgGenImage('assets/icons/ic_timer_char.svg');

  /// File path: assets/icons/ic_timesheets.svg
  SvgGenImage get icTimesheets =>
      const SvgGenImage('assets/icons/ic_timesheets.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    icArrowUpDown,
    icBack,
    icChecked,
    icDown,
    icEdit,
    icPause,
    icPlus,
    icProjectChar,
    icProjects,
    icSettings,
    icStarChar,
    icStarCharFilled,
    icStop,
    icTimerChar,
    icTimesheets,
  ];
}

class AppIcons {
  const AppIcons._();

  static const String package = 'app_ui';

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  static const String package = 'app_ui';

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/app_ui/$_assetName';
}
