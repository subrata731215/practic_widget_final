import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import 'package:reactiv/reactiv.dart';
import '../../../routes/routes.dart';
import 'listtileController.dart';

class ListTileClass extends ReactiveStateWidget<ListTileController> {
  const ListTileClass({super.key});

  @override
  ListTileController bindController() => ListTileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context,
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
          }),
      floatingActionButton: Observer(
          listenable: controller.listtile,
          listener: (context) {
            return FloatingActionButton(
              onPressed: () {
                controller.addMyListtile(
                  const ListTile(
                    leading: Icon(Icons.contact_phone_rounded),
                    title: Text('Subrata'),
                    subtitle: Text('Ghosh'),
                    trailing: Icon(Icons.delete),
                  ),
                );
              },
              child: const Icon(Icons.add),
            );
          }),
    );
  }
}
