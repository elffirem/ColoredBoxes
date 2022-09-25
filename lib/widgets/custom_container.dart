import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/model.dart';
import '../view_models/controller.dart';

class CustomContainer extends StatefulWidget {
  final BoxModel model;

  const CustomContainer({super.key, required this.model});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  final Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.choose(widget.model.index);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: widget.model.color,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: Colors.black, width: 2)),
      ),
    );
  }
}
