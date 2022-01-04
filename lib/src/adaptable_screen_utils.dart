part of adaptable_screen;

class AdaptableScreenUtils {
  static double? _heightUIDisign;
  static double? _widthUIDisign;

  static final AdaptableScreenUtils _instance =
      AdaptableScreenUtils._internal();

  factory AdaptableScreenUtils() {
    return _instance;
  }

  AdaptableScreenUtils._internal();

  static void init({double? heightUIDisign, double? widthUIDisign}) {
    assert(heightUIDisign != 0);
    assert(widthUIDisign != 0);
    _heightUIDisign = heightUIDisign;
    _widthUIDisign = widthUIDisign;
  }

  /// Size of the phone in UI Design , px

  Size get _defaultSize => Size(_widthUIDisign ?? 375, _heightUIDisign ?? 812);

  /// Representing the main window for applications where there is only one
  /// window, such as applications designed for single-display mobile windows or
  ///  the main window to which this binding is bound.
  SingletonFlutterWindow get _window =>
      WidgetsBinding.instance?.window ?? ui.window;

  /// Width of the main window that this link is linked to.
  double get width {
    return MediaQueryData.fromWindow(_window).size.width;
  }

  /// Height of the main window that this link is linked to.
  double get height {
    return MediaQueryData.fromWindow(_window).size.height;
  }

  /// Represents the actual window scaling factor.
  double get factorTextScaleRealwindow {
    return MediaQueryData.fromWindow(_window).textScaleFactor;
  }

  // Represents the scale factor with the range up to 1.6
  double get factorTextScale {
    return factorTextScaleRealwindow <= 1.6 ? factorTextScaleRealwindow : 1.6;
  }

  /// The ratio of the actual dp to the design draft px
  double get scaleWidth => width / _defaultSize.width;

  /// The ratio of the actual dp to the design draft px
  double get scaleHeiht => height / _defaultSize.height;

  /// text scaled based on width.
  double get textScale => scaleWidth;

  /// The offset from the top
  double get heightStatusBar => MediaQueryData.fromWindow(_window).padding.top;

  /// The offset from the bottom.
  double get heightBottomBar =>
      MediaQueryData.fromWindow(_window).padding.bottom;

  /// Maximum window Height and Width Sizes
  double get lengthMax {
    return max(height, width);
  }

  /// Minimum window Height and Width Sizes
  double get lengthMin {
    return min(height, width);
  }

  /// Scales radius based on minimum window sizes
  double radius(double radius) => radius * lengthMin;

  /// Scaled height based on window size.
  double steppedHeight(double height) {
    return height * scaleHeiht;
  }

  /// Scaled width based on window size.
  double steppedWidth(double width) {
    return width * scaleWidth;
  }

  /// Adjusting font according to the scaling factor, the scaling can be dynamic or fixed.
  double setFont(double fontSize, {bool autoScale = false}) {
    if (autoScale) {
      return fontSize * textScale * factorTextScale / factorTextScaleRealwindow;
    }
    return (fontSize * textScale) / factorTextScaleRealwindow;
  }
}
