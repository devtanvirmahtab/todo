import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_form_field.dart';
import '../controllers/add_task_controller.dart';

class AddTaskView extends GetView<AddTaskController> {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddTaskView'),
        centerTitle: true,
      ),
      body: Container(
        padding: mainPaddingAll,
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              AppFormField(
                controller: controller.titleController,
                hintText: 'Title',
              ),
              appWidget.gapH8(),
              AppFormField(
                controller: controller.descriptionController,
                hintText: 'Description',
              ),
              appWidget.gapH12(),
              AppButton(
                text: 'Add Task',
                onTap: () {
                  controller.addTaskHandler();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
