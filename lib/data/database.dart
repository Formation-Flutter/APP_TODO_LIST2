import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference our box
  final _myBox = Hive.box('mybox');

  // when we open the app first time
  void createInitialData() {
    toDoList = [
      ["Learn my lesson", false],
      ["Watch the floor", false],
    ];
      }
//load the data from DataBase
    void loadData() {
      toDoList = _myBox.get("TODOLIST");
    }

    //update the database
    void updateDataBase() {
      _myBox.put("TODOLIST", toDoList);
    }

}
