import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/main.dart';

class ListTileClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context,
          appBarTitle: 'ListTile', trailingRoutes: Routes.listViewBuilder),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              height: 20,
              width: 30,
              color: Colors.red,
            ),
            title: Center(child: Text('Container')),
            subtitle: Center(child: Text('Learn')),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                children: [
                  Icon(Icons.home),
                  Icon(Icons.place),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
