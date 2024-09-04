
import 'package:hive/hive.dart';
part 'tasks_model.g.dart';

@HiveType(typeId: 0)
class TasksModel extends HiveObject{

  @HiveField(0)
  String title ;

  @HiveField(1)
  String description ;

  TasksModel({required this.title , required this.description}) ;
}