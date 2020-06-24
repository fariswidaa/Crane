import 'package:flutter/material.dart';

class BorderTabIndicator extends Decoration {
  final double indicatorHeight;

  const BorderTabIndicator({this.indicatorHeight}) : super();

  @override
  BoxPainter createBoxPainter([onChanged]) {
    return _BorderPainter(this, indicatorHeight, onChanged);
  }
}

class _BorderPainter extends BoxPainter {
  final BorderTabIndicator decoration;
  final double indicatorHeight;

  const _BorderPainter(
      this.decoration, this.indicatorHeight, VoidCallback onChanged)
      : assert(decoration != null),
        assert(indicatorHeight >= 0),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    final double horizontalInset = 12;

    final Rect rect = Offset(offset.dx + horizontalInset,
            (configuration.size.height / 2) - indicatorHeight / 2) &
        Size(configuration.size.width - 2 * horizontalInset, indicatorHeight);

    final Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, Radius.circular(56.0)),
      paint,
    );
  }
}
