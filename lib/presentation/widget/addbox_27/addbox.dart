import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import 'package:reactiv/reactiv.dart';
import '../../../routes/routes.dart';
import '../addcontainer_1/controller/controller.dart';

class AddBox extends ReactiveStateWidget<AddContainerController> {
  const AddBox({Key? key}) : super(key: key);

  @override
  AddContainerController bindController() => AddContainerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBarWidget(context, appBarTitle: 'AddBox', trailingRoutes: Routes.addContainer),
        body: Observer(
            listenable: controller.addBoxLIst,
            listener: (box) {
              return ListView.builder(
                  itemCount: box.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 18),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 250,
                            child: box[index],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          controller.addBoxLIst.length == index + 1
                              ? Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle),
                                  child: IconButton(
                                      onPressed: () {
                                        controller.addBox();
                                      },
                                      icon: const Icon(Icons.add)))
                              : Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle),
                                  child: IconButton(
                                      onPressed: () {
                                        controller.removeBox(index);
                                      },
                                      icon: const Icon(Icons.remove))),
                        ],
                      ),
                    );
                  });
            }));
  }
}
