part of adaptable_screen;

extension AdaptableScreen on num {
  double get h => AdaptableScreenUtils._instance.steppedHeight(toDouble());
  double get w => AdaptableScreenUtils._instance.steppedWidth(toDouble());
  double get sp => AdaptableScreenUtils._instance.setFont(toDouble());
  double get ssp =>
      AdaptableScreenUtils._instance.setFont(toDouble(), autoScale: true);
  double get r => AdaptableScreenUtils._instance.radius(toDouble());
}
