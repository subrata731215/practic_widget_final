import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/main.dart';

class ListViewBuilderLern extends StatefulWidget {
  const ListViewBuilderLern({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLern> createState() => _ListViewBuilderLernState();
}

class _ListViewBuilderLernState extends State<ListViewBuilderLern> {
  String? newTaskText;

  bool isItsChecked = false;
  List<Task> taskList = <Task>[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbarWidget(context,
            appBarTitle: 'ListView.Builder',
            trailingRoutes: Routes.textFieldLearn),
        body: ListView.builder(
            itemCount: taskList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(taskList[index].text),
                leading: const Icon(Icons.list),
                trailing: Checkbox(
                  value: isItsChecked,
                  onChanged: (newValue) {
                    setState(() {
                      isItsChecked = newValue!;
                    });
                  },
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => SizedBox(
                height: 500,
                width: 200,
                child: Column(
                  children: [
                    TextField(
                      onChanged: (value) {
                        newTaskText = value;
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (newTaskText != null) {
                              taskList.add(Task(text: newTaskText!));
                            }
                          });
                        },
                        child: const Text('Add'))
                  ],
                ),
              ),
            );
          },
          backgroundColor: Colors.red,
          tooltip: 'showModelButtomSheet',
        ),
      ),
    );
  }
}

class Task {
  String text;

  Task({required this.text});
}

class AddContainerLearn {
  Container cont;

  AddContainerLearn({required this.cont});
}
