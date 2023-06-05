import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/main.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  TextEditingController _controller = TextEditingController();

  final List<Widget> listTileList = [];

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBarWidget(context,
            appBarTitle: 'TextField With ShowButtonSheet',
            trailingRoutes: Routes.randomNoGenerate),
        body: SingleChildScrollView(
          child: Column(
            children: listTileList,
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                tooltip: 'Shown Buttton',
                onPressed: () {
                  setState(() {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                              child: Column(
                                children: [
                                  TextField(
                                    textAlign: TextAlign.center,
                                    textInputAction: TextInputAction.next,
                                    controller: _controller,
                                    onChanged: (value) {
                                      value = _controller.text;
                                    },
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          listTileList.add(ListTileFinalData(
                                              title: _controller.text,
                                              tralingIcon: Icons.account_box));
                                        });
                                      },
                                      child: Text('ADD')),
                                ],
                              ),
                            ));
                  });
                },
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                tooltip: 'Add ListileText',
                onPressed: () {
                  setState(() {
                    listTileList.add(ListTile(
                      title: Text('Kala'),
                      trailing: Text('25'),
                    ));
                  });
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class ListTileFinalData extends StatelessWidget {
  ListTileFinalData({Key? key, required this.title, required this.tralingIcon})
      : super(key: key);
  String title;
  IconData tralingIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Icon(tralingIcon),
    );
  }
}
