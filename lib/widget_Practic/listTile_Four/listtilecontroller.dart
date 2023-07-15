import 'package:flutter/material.dart';
import 'package:reactiv/controllers/reactive_controller.dart';
import 'package:reactiv/reactiv.dart';

class ListTileController extends ReactiveController {
  ReactiveList<ListTile> listtile = ReactiveList([]);

  addmyListtile(ListTile listTile) {
    listtile.add(
      ListTile(
        leading: Icon(Icons.contact_phone_rounded),
        title: Text('Subrata'),
        subtitle: Text('Ghosh'),
        trailing: Icon(Icons.delete),
      ),
    );
  }
}
