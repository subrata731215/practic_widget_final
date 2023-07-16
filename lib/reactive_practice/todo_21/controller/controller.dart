import 'package:reactiv/reactiv.dart';

class TodoController extends ReactiveController {
  final checkValue = ReactiveBool(false);
  final myTask = ReactiveString('');

  ReactiveList<TodoModel> todoList = ReactiveList([]);

  addTodoList() {
    todoList.add(
      TodoModel(myTodo: myTask.value, isChecked: checkValue.value),
    );
  }
}

class TodoModel {
  String myTodo;
  bool isChecked;

  TodoModel({required this.myTodo, this.isChecked = false});

  checkBoxController() {
    isChecked = !isChecked;
  }
}
