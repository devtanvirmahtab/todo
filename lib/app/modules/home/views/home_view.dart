import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/core/constants/app_colors.dart';
import 'package:todo/app/core/constants/app_constants.dart';
import 'package:todo/app/core/constants/app_text_style.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() {
        return ListView.separated(
          padding: mainPaddingAll,
          itemCount: controller.taskList.length,
          itemBuilder: (context, index) {
            final data = controller.taskList[index];
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: AppColor.borderGrayColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${index + 1}. ${data.title ?? ''}',
                    style: text16Style(),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.taskList.remove(data);
                    },
                    icon: const Icon(Icons.delete),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return appWidget.gapH12();
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.ADD_TASK);
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
