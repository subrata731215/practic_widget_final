import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import '../../../routes/routes.dart';

void main() => runApp(const CheckBox()); ////DoubleState

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  TextEditingController _controller = TextEditingController();

  bool isChecked = false;

  void checkBoxCallBack(checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          appBarTitle: 'CheckBox', trailingRoutes: Routes.dataTable),
      body: Center(
        child: ListTile(
          title: Text(
            'Buy Milk',
            style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: CheckBoxState(
            checkBoxState: isChecked,
            toggleCheckBoxState: checkBoxCallBack,
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
