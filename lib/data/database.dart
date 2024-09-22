import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];
  // reference our box
  final _myBox = Hive.box('mybox');

  // run thid method if this is the 1st time ever opening this app

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
