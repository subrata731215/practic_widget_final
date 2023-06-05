import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/main.dart';

class ListTileClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context,
          appBarTitle: 'ListTile', trailingRoutes: Routes.listViewBuilder),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    );
  }
}
