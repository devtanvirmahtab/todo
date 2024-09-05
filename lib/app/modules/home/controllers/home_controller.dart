import 'package:get/get.dart';

import '../../../data/models/add_task_model.dart';
import '../../../data/models/tasks_model.dart';

class HomeController extends GetxController {
  final taskList = <AddTaskModel>[
    AddTaskModel(title: 'Apple', description: 'This is Apple description'),
    AddTaskModel(title: 'Mango', description: 'This is Mango description'),
    AddTaskModel(title: 'Banana', description: 'This is Banana description'),
    AddTaskModel(title: 'Guava', description: 'This is Guava description'),
  ].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void delete(TasksModel notesModel)async{
    await notesModel.delete() ;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
