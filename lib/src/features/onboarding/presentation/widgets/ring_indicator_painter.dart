import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class RingIndicatorPainter extends CustomPainter {
  final Color color;
  final double progress;

  RingIndicatorPainter({
    required this.color,
    required this.progress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 3.w; //
    double padding = 8;
    final Rect rect = Rect.fromLTWH(
      padding,
      padding,
      size.width - 2 * padding,
      size.height - 2 * padding,
    );
    final double sweepAngle = 2 * 3.141592653589793 * progress;
    canvas.drawArc(
      // remove fill color
      rect,
      -3.141592653589793 / 2, // start angel
      2 * 3.141592653589793, // sweep angel
      false,
      Paint()
        ..color = HexColor('#99D1FF') //
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round,
    );
    canvas.drawArc(
      // fill color
      rect,
      -3.141592653589793 / 2, // start angel
      sweepAngle, // sweep angel
      false,
      Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
