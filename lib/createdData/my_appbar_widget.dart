import 'package:flutter/material.dart';
import 'package:practic/routes/routes.dart';

PreferredSizeWidget myAppBarWidget(
  BuildContext context, {
  required String appBarTitle,
  required String trailingRoutes,
}) {
  return AppBar(
    backgroundColor: Colors.brown,
    title: Text(
      appBarTitle,
      textAlign: TextAlign.center,
      textScaleFactor: 0.9,
    ),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pushNamed(context, Routes.mainHomepage);
      },
      icon: const Icon(Icons.arrow_back),
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, trailingRoutes);
        },
        icon: const Icon(Icons.arrow_forward),
      )
    ],
  );
}
