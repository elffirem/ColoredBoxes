import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_models/controller.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  final Controller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    List<Row> rowList = [];
    List<Widget> littleWidgetList = [];
    for (int i = 0; i < 3; i++) {
      littleWidgetList = [];
      for (int j = i * 3; j < i * 3 + 3; j++) {
        littleWidgetList.add(controller.boxes[j]);
      }
      rowList.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: littleWidgetList,
      ));
    }
    return Column(
      children: rowList,
    );
  }
}
