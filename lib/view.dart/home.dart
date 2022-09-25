import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_models/controller.dart';
import '../widgets/appbar.dart';
import '../widgets/buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Align(alignment: Alignment.topCenter, child: CustomAppBar()),
          const SizedBox(height: 80),
          Center(
              child: Obx(() => Text(
                    controller.boxes[controller.returnSelectedValue].model.name,
                    style: TextStyle(
                        color: controller
                            .boxes[controller.returnSelectedValue].model.color,
                        fontSize: 50,
                        fontWeight: FontWeight.w400),
                  ))),
          const SizedBox(height: 80),
          const Buttons()
        ],
      ),
    );
  }
}
