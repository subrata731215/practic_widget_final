import 'package:flutter/material.dart';
import 'package:reactiv/controllers/reactive_controller.dart';

class DrawerLearnController extends ReactiveController {
  List<DrawerModel> drawerList = [
    DrawerModel(icon: Icons.folder, text: 'My Files'),
    DrawerModel(icon: Icons.group, text: 'Share With Me'),
    DrawerModel(icon: Icons.star, text: 'Started'),
    DrawerModel(icon: Icons.delete, text: 'Trash'),
    DrawerModel(icon: Icons.upload, text: 'Upload'),
    DrawerModel(icon: Icons.share, text: 'Share'),
    DrawerModel(icon: Icons.notifications, text: 'Notification'),
    DrawerModel(icon: Icons.logout, text: 'Log Out'),
  ];
}

class DrawerModel {
  IconData icon;
  String text;

  DrawerModel({required this.icon, required this.text});
}
