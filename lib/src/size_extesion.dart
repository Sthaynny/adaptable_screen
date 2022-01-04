part of adaptable_screen;

extension AdaptableScreen on num {
  /// Adding scaling in height based on window size.
  double get h => AdaptableScreenUtils._instance.steppedHeight(toDouble());

  /// Adding scaling in width based on window size.
  double get w => AdaptableScreenUtils._instance.steppedWidth(toDouble());

  /// Adding scaling in text based on window size.
  double get sp => AdaptableScreenUtils._instance.setFont(toDouble());

  /// By scaling the text based on the window size, this function can change the
  ///  font size as the window changes size.
  double get ssp =>
      AdaptableScreenUtils._instance.setFont(toDouble(), autoScale: true);

  /// Adding radius scaling based on minimum window size.
  double get r => AdaptableScreenUtils._instance.radius(toDouble());
}
