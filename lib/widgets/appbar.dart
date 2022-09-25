import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_models/controller.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: MediaQuery.of(context).size.height / 9,
          width: MediaQuery.of(context).size.width,
          color: controller.boxes[controller.returnSelectedValue].model.color,
          child: const Center(
            child: Text(
              "** COLORED BOXES **",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ));
  }
}
