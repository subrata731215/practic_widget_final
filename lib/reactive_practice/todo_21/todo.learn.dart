import 'package:flutter/material.dart';
import 'package:practic/reactive_practice/todo_21/controller/controller.dart';
import 'package:reactiv/reactiv.dart';

class ToDoLearn extends ReactiveStateWidget<TodoController> {
  const ToDoLearn({Key? key}) : super(key: key);

  @override
  TodoController bindController() => TodoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      appBar: AppBar(
        title: const Text(
          'To Do',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: controller.todoList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 20),
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey,
              child: ListTile(
                leading: Checkbox(
                  value: controller.checkValue.value,
                  onChanged: (bool? value) {},
                ),
                title: Text(
                  controller.todoList[0].myTodo,
                  style: const TextStyle(color: Colors.red, fontSize: 30),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
                backgroundColor: Colors.yellow.shade700,
                title: Column(
                  children: [
                    TextFormField(
                      onChanged: (nVal) {
                        controller.myTask.value = nVal;
                      },
                      decoration: const InputDecoration(
                          hintText: 'Add Your ToDo',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancel')),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              controller.addTodoList();
                              Navigator.pop(context);
                            },
                            child: const Text('Submit')),
                      ],
                    )
                  ],
                )),
          );
        },
        label: const Row(
          children: [
            Text('Add Your To Do'),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.add),
          ],
        ),
      ),
    );
  }
}
