import 'package:flutter/cupertino.dart';
import 'package:reactiv/reactiv.dart';
import 'model.dart';

class AllDataController extends ReactiveController {
  final ReactiveBool switchValue = ReactiveBool(false);
  final ReactiveList<Contact> contactList = ReactiveList([]);
  final nameController = TextEditingController();
  final phController = TextEditingController();


  void add({required Contact contact}) {
    contactList.add(contact);
  }

  void remove({required Contact contact}) {
    var i = contactList.indexOf(contact);

    contactList.removeAt(i);
  }
}
