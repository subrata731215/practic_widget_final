import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/main.dart';

void main() => runApp(const CheckBoxTestWithTwoState()); ////DoubleState

class CheckBoxTestWithTwoState extends StatefulWidget {
  const CheckBoxTestWithTwoState({super.key});

  @override
  State<CheckBoxTestWithTwoState> createState() =>
      _CheckBoxTestWithTwoStateState();
}

class _CheckBoxTestWithTwoStateState extends State<CheckBoxTestWithTwoState> {
  TextEditingController _controller = TextEditingController();

  bool ischecked = false;

  void checkBoxCallBack(chekboxstate) {
    setState(() {
      ischecked = chekboxstate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 400,
                    color: Colors.green,
                    child: Column(
                      children: [
                        TextField(
                          controller: _controller,
                          onChanged: (value) {
                            _controller = value as TextEditingController;
                          },
                        ),
                        // ignore: prefer_const_constructors
                        ElevatedButton(onPressed: () {}, child: Text('Add'))
                      ],
                    ),
                  );
                });
          },
        ),
        appBar: appbarWidget(context,
            appBarTitle: 'CheckBox', trailingRoutes: Routes.dropDownButton),
        body: Center(
          child: ListTile(
            title: Text(
              'Buy Milk',
              style: TextStyle(
                decoration: ischecked ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: CheckBoxState(
              checkBoxState: ischecked,
              toggleCheckBoxState: checkBoxCallBack,
            ),
          ),
        ),
      ),
    );
  }
}

class CheckBoxState extends StatelessWidget {
  final bool checkBoxState;
  final ValueChanged<bool?> toggleCheckBoxState;

  const CheckBoxState(
      {super.key,
      required this.checkBoxState,
      required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
