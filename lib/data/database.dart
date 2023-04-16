import 'package:hive_flutter/adapters.dart';

class TodoDatabase {
  List todoList = [];

  final _myBox = Hive.box('mybox');

  // run this method if this is the first time ever opening of app
  void createInitialData() {
    todoList = [
      ["Tap on Add button to add todo", false],
      ["Check the checkbox to complete the todo", false],
      ["Swipe left on a ToDo to delete it", false],
    ];
  }

  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  void updateDatabse() {
    _myBox.put("TODOLIST", todoList);
  }
}
