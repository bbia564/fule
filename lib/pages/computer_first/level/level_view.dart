import 'package:building_computer/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'dart:math';
import 'level_logic.dart';

class LevelPage extends GetView<LevelLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text('Level'),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: <Widget>[
            Image.asset(
              'assets/level.webp',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            CustomPaint(
              size: const Size(300, 300),
              painter: LevelPainter(controller.x.value.toDouble(), controller.y.value.toDouble()),
            ),
            Positioned(
                top: 20,
                right: 40,
                child: Container(
                  height: 36,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Obx(() {
                    return Text(
                      'X: ${controller.x.value}',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    );
                  }),
                ).decorated(
                    color: Colors.white.withOpacity(0.37),
                    borderRadius: BorderRadius.circular(18))),
            Positioned(
                top: 70,
                right: 40,
                child: Container(
                  height: 36,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Obx(() {
                    return Text(
                      'Y: ${controller.y.value}',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    );
                  }),
                ).decorated(
                    color: Colors.white.withOpacity(0.37),
                    borderRadius: BorderRadius.circular(18)))
          ].toStack(alignment: Alignment.center),
        ),
      ),
    );
  }
}

class LevelPainter extends CustomPainter {
  final double x;
  final double y;

  LevelPainter(this.x, this.y);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;
    const double maxOffset = 100;
    final dx = (x / 10) * maxOffset;
    final dy = -(y / 10) * maxOffset;
    final indicatorPosition = center + Offset(dx, dy);
    canvas.drawCircle(indicatorPosition, 10, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
