import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practic/main.dart';

PreferredSizeWidget AppBarWidget(
  BuildContext context, {
  required String appBarTitle,
  required String trailingRoutes,
}) {
  return AppBar(
    title: Text(appBarTitle),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pushNamed(context, Routes.homepage);
      },
      icon: Icon(Icons.arrow_back),
    ),
    actions: [
      IconButton(
          onPressed: () {
            Navigator.pushNamed(context, trailingRoutes);
          },
          icon: Icon(Icons.arrow_forward))
    ],
  );
}
