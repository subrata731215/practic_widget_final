import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/main.dart';
import 'package:reactiv/reactiv.dart';
import 'listtilecontroller.dart';

class ListTileClass extends ReactiveStateWidget<ListTileController> {
  @override
  ListTileController bindController() => ListTileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context,
          appBarTitle: 'ListTile', trailingRoutes: Routes.listViewBuilder),
      body: Observer(
        listenable: controller.listtile,
        listener: (context) {
          return ListView.builder(
            itemCount: controller.listtile.length,
            itemBuilder: (BuildContext context, int index) {
              return controller.listtile[index];
            },

          );
        }
      ),
      floatingActionButton: Observer(
        listenable: controller.listtile,
        listener: (context) {
          return FloatingActionButton(
            onPressed: () {
              controller.addmyListtile(
                ListTile(
                  leading: Icon(Icons.contact_phone_rounded),
                  title: Text('Subrata'),
                  subtitle: Text('Ghosh'),
                  trailing: Icon(Icons.delete),
                ),
              );
            },
            child: Icon(Icons.add),
          );
        }
      ),
    );
  }
}
