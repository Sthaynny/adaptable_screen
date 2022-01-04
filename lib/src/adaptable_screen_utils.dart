part of adaptable_screen;

class AdaptableScreenUtils {
  static final AdaptableScreenUtils _instance =
      AdaptableScreenUtils._internal();

  factory AdaptableScreenUtils() {
    return _instance;
  }

  AdaptableScreenUtils._internal();

  final Size _defaultSize = Size(375, 812);

  SingletonFlutterWindow get _window =>
      WidgetsBinding.instance?.window ?? ui.window;

  double get width {
    return MediaQueryData.fromWindow(_window).size.width;
  }

  double get height {
    return MediaQueryData.fromWindow(_window).size.height;
  }

  double get factorTextScaleRealDevice {
    return MediaQueryData.fromWindow(_window).textScaleFactor;
  }

  double get factorTextScale {
    return factorTextScaleRealDevice <= 1.6 ? factorTextScaleRealDevice : 1.6;
  }

  double get scaleWidth => width / _defaultSize.width;

  double get scaleHeiht => height / _defaultSize.height;

  double get textScale => scaleWidth;

  double get heightStatusBar => MediaQueryData.fromWindow(_window).padding.top;

  double get heightBottomBar =>
      MediaQueryData.fromWindow(_window).padding.bottom;

  double get lengthMax {
    return max(height, width);
  }

  double radius(double radius) => radius * lengthMin;

  get lengthMin {
    return min(height, width);
  }

  double steppedHeight(double height) {
    return height * scaleHeiht;
  }

  double steppedWidth(double width) {
    return width * scaleWidth;
  }

  double setFont(double fontSize, {bool autoScale = false}) {
    if (autoScale) {
      return fontSize * textScale * factorTextScale / factorTextScaleRealDevice;
    }
    return (fontSize * textScale) / factorTextScaleRealDevice;
  }
}
