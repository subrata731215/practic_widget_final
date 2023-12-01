import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import '../../../createdData/my_appbar_widget.dart';
import '../../../routes/routes.dart';
import 'controller/controller.dart';


class ListSeparate extends ReactiveStateWidget<ListViewController> {
  @override
  ListViewController bindController() => ListViewController();

  const ListSeparate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: myAppBarWidget(context,
            appBarTitle: 'ListView.Separate', trailingRoutes: Routes.lottie),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.account_balance_outlined),
                title: Text(controller.name[index]),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 20,
                thickness: 2,
              );
            },
            itemCount: controller.name.length),
    );
  }
}
