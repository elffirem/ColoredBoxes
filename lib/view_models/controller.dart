import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/model.dart';
import '../widgets/custom_container.dart';

class Controller extends GetxController {
  final _selectedIndex = 0.obs;

  List<CustomContainer> boxes = [
    CustomContainer(
      model: BoxModel(color: Colors.yellow, name: "Yellow", index: 0),
    ),
    CustomContainer(model: BoxModel(color: Colors.red, name: "Red", index: 1)),
    CustomContainer(
        model: BoxModel(color: Colors.pink, name: "Pink", index: 2)),
    CustomContainer(
        model: BoxModel(color: Colors.orange, name: "Orange", index: 3)),
    CustomContainer(
        model: BoxModel(color: Colors.purple, name: "Purple", index: 4)),
    CustomContainer(
        model: BoxModel(color: Colors.green, name: "Green", index: 5)),
    CustomContainer(
        model: BoxModel(color: Colors.blue, name: "Blue", index: 6)),
    CustomContainer(
        model: BoxModel(color: Colors.grey, name: "Grey", index: 7)),
    CustomContainer(
        model: BoxModel(color: Colors.black, name: "Black", index: 8)),
  ].obs;

  void choose(int i) {
    _selectedIndex.value = i;
  }

  int get returnSelectedValue => _selectedIndex.value;
}
