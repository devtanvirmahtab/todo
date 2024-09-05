import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:todo/app/data/models/add_task_model.dart';
import 'package:todo/app/data/models/tasks_model.dart';
import 'package:todo/app/modules/home/controllers/home_controller.dart';

import '../../../core/utils/boxes/boxes.dart';

class AddTaskController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final homeController = Get.find<HomeController>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  addTaskHandler() {
    if (formKey.currentState!.validate() &&
        titleController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty) {
      // homeController.taskList.add(
      //   AddTaskModel(
      //     title: titleController.text,
      //     description: descriptionController.text,
      //   ),
      // );
      final data = TasksModel(title: titleController.text,
          description: descriptionController.text) ;

      final box = Boxes.getData();
      box.add(data);
      data.save() ;

      titleController.clear();
      descriptionController.clear();


      Get.back();
    }
  }

  @override
  void onClose() {
    titleController.dispose();
    descriptionController.dispose();
    super.onClose();
  }
}
