
import 'package:hive/hive.dart';

import '../../../data/models/tasks_model.dart';

class Boxes {

  static Box<TasksModel> getData() => Hive.box<TasksModel>('notes');

}