part of adaptable_screen;

class AdaptableScreenUtils {
  static final AdaptableScreenUtils _instance =
      AdaptableScreenUtils._internal();

  factory AdaptableScreenUtils() {
    return _instance;
  }

  AdaptableScreenUtils._internal();

  final Size _defaultSize = const Size(375, 812);

  /// Representing the main window for applications where there is only one 
  /// window, such as applications designed for single-display mobile devices or
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

  /// Represents the actual device scaling factor.
  double get factorTextScaleRealDevice {
    return MediaQueryData.fromWindow(_window).textScaleFactor;
  }

  // Represents the scale factor with the range up to 1.6
  double get factorTextScale {
    return factorTextScaleRealDevice <= 1.6 ? factorTextScaleRealDevice : 1.6;
  }

  /// The ratio of the actual dp to the design draft px
  double get scaleWidth => width / _defaultSize.width;

  /// The ratio of the actual dp to the design draft px
  double get scaleHeiht => height / _defaultSize.height;

  double get textScale => scaleWidth;

  /// The offset from the top
  double get heightStatusBar => MediaQueryData.fromWindow(_window).padding.top;

  /// The offset from the bottom.
  double get heightBottomBar =>
      MediaQueryData.fromWindow(_window).padding.bottom;

  /// Maximum Device Height and Width Sizes
  double get lengthMax {
    return max(height, width);
  }

  /// Scales radius based on minimum device sizes
  double radius(double radius) => radius * lengthMin;

  get lengthMin {
    return min(height, width);
  }

  /// Scaled height based on device size.
  double steppedHeight(double height) {
    return height * scaleHeiht;
  }

  /// Scaled wigth based on device size.
  double steppedWidth(double width) {
    return width * scaleWidth;
  }

  /// Adjusting font according to the scaling factor, the scaling can be dynamic or fixed.
  double setFont(double fontSize, {bool autoScale = false}) {
    if (autoScale) {
      return fontSize * textScale * factorTextScale / factorTextScaleRealDevice;
    }
    return (fontSize * textScale) / factorTextScaleRealDevice;
  }
}
