import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/main.dart';



class AddContainer extends StatefulWidget {
  AddContainer({Key? key}) : super(key: key);

  @override
  State<AddContainer> createState() => _AddContainerState();
}

class _AddContainerState extends State<AddContainer> {
  List<Widget> addCont = [];

  void addContainer(Color color) {
    setState(() {
      addCont.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(height: 50, width: 50, color: color),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          tooltip: 'Pressd And Create A Container',
          onPressed: () {
            addContainer(Colors.green);
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBarWidget(context,
            appBarTitle: 'AddContainer', trailingRoutes: Routes.checkBox),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: addCont,
            ),
          ),
        ),
      ),
    );
  }
}
