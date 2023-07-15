import 'package:flutter/material.dart';

bool checkBoxValue = false;

class PracticeWidget extends StatefulWidget {
  final String title;
  final VoidCallback onp;
  final int slNo;

  const PracticeWidget({
    Key? key,
    required this.title,
    required this.onp,
    required this.slNo,
  }) : super(key: key);

  @override
  State<PracticeWidget> createState() => _PracticeWidgetState();
}

class _PracticeWidgetState extends State<PracticeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListTile(
        tileColor: checkBoxValue ? Colors.brown : Colors.orangeAccent,
        leading: CircleAvatar(
          backgroundColor: checkBoxValue ? Colors.green[500] : null,
          child: Text(widget.slNo.toString()),
        ),
        trailing: Checkbox(
            value: checkBoxValue,
            onChanged: (nValue) {
              setState(() {
                checkBoxValue = nValue!;
              });
            }),
        contentPadding: const EdgeInsets.all(10),
        textColor: Colors.green,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(40),
        ),
        title: Center(
          child: Text(
            widget.title,
            selectionColor: Colors.green,
            style: const TextStyle(
              letterSpacing: 5,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        subtitle: const Center(
            child: Text(
          'Learn',
          style: TextStyle(
              letterSpacing: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 15),
        )),
        onTap: widget.onp,
      ),
    );
  }
}
