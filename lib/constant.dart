import 'package:flutter/material.dart';
import 'homepage/homepage.controller.dart';

PreferredSizeWidget appbarWidget(
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
      icon: const Icon(Icons.arrow_back),
    ),
    actions: [
      IconButton(
          onPressed: () {
            Navigator.pushNamed(context, trailingRoutes);
          },
          icon: const Icon(Icons.arrow_forward))
    ],
  );
}
