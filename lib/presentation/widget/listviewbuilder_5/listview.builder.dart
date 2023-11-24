import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import '../../../routes/routes.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  String? newTaskText;

  bool isItsChecked = false;
  List<Task> taskList = <Task>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'ListView.Builder', trailingRoutes: Routes.listGenerate),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) => Text((index+1).toString(),style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),))),
          Expanded(
            child: Container(
              color: Colors.teal,
              child: ListView.builder(
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
            ),
          ),
        ],
      ),
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
        tooltip: 'showModelBottomSheet',
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
