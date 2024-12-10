import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_widget/styled_widget.dart';

import 'ruler_logic.dart';

class RulerPage extends GetView<RulerLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f2fa),
      appBar: AppBar(
        title: const Text('Ruler'),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 1000,
              itemBuilder: (_, index) {
                return <Widget>[
                  <Widget>[
                    const SizedBox(
                      width: 62,
                      height: 55,
                    ),
                    Image.asset(
                      'assets/ruler.webp',
                      width: 47,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                    Positioned(top: 0,right: 0,child: Text(index.toString()),)
                  ].toStack(alignment: Alignment.centerLeft),
                  <Widget>[
                    const SizedBox(
                      width: 62,
                      height: 55,
                    ),
                    Image.asset(
                      'assets/rulerRight.webp',
                      width: 47,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                    Positioned(top: 0,left: 0,child: Text(index.toString()),)
                  ].toStack(alignment: Alignment.centerRight)
                ].toRow(mainAxisAlignment: MainAxisAlignment.spaceBetween);
              })),
    );
  }
}
