import 'package:flutter/material.dart';

class ProgressPainter extends CustomPainter {
  double barHeight;
  double bartWidth;
  double donepercent;
  Color backgroundColor;
  Color percentageColor;

  ProgressPainter(
      {required this.bartWidth,
      required this.barHeight,
      required this.donepercent,
      required this.backgroundColor,
      required this.percentageColor});

  getPaint(Color color) {
    return Paint()
      ..color = color
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint defaultBarPaint = getPaint(backgroundColor);
    Paint percentageBarPaint = getPaint(percentageColor);

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Offset(-(bartWidth / 2), -barHeight / 2) &
                Size(bartWidth, barHeight),
            Radius.circular(barHeight / 2)),
        defaultBarPaint);

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Offset(-(bartWidth / 2), -barHeight / 2) &
                Size(bartWidth * donepercent, barHeight),
            Radius.circular(barHeight / 2)),
        percentageBarPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
