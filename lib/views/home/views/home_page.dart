import 'package:code_test/core/const/color.dart';
import 'package:code_test/views/home/controllers/home_controller.dart';
import 'package:code_test/views/home/views/code_test_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  static const String route = "/home";
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "All Data",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body:  Obx(() {
          if (controller.isLoading.value) {
            return SizedBox(
              width: Get.width,
              height: Get.height,
              child: const Center(
                child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(CTColor.mainColor),
                ),
              ),
            );
          } else if (controller.errorMessage.value?.isNotEmpty ?? false) {
            return SizedBox(
              width: Get.width,
              height: Get.height,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Text(
                    controller.errorMessage.value.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          } else if (controller.allPostsList.isEmpty) {
            return SizedBox(
              width: Get.width,
              height: Get.height,
              child: const Center(
                child: Padding(
                    padding: EdgeInsets.all(11),
                    child: Text("There is no data.")),
              ),
            );
          } else {
            return ListView.builder(
                itemBuilder: ((context, index) =>
                    CodeTestWidget(controller.allPostsList[index])),
                itemCount: controller.allPostsList.length,
                shrinkWrap: true,
                padding: const EdgeInsets.all(11));
          }
        }),
    );
  }
}