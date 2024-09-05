import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo/app/core/constants/app_colors.dart';
import 'package:todo/app/core/constants/app_constants.dart';
import 'package:todo/app/core/constants/app_text_style.dart';
import 'package:todo/app/data/models/tasks_model.dart';

import '../../../core/utils/boxes/boxes.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:  ValueListenableBuilder<Box<TasksModel>>(
          valueListenable: Boxes.getData().listenable(),
          builder: (context,box,_) {
            var data = box.values.toList().cast<TasksModel>();
            return ListView.separated(
              padding: mainPaddingAll,
              itemCount: box.length,
              itemBuilder: (context, index) {
                final singleData = data[index];
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: AppColor.borderGrayColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${index + 1}. ${singleData.title ?? ''}',
                        style: text16Style(),
                      ),
                      IconButton(
                        onPressed: () {
                          controller.delete(singleData);
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
          }
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.ADD_TASK);
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
