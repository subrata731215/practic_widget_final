import 'package:reactiv/controllers/reactive_controller.dart';
import 'package:reactiv/reactiv.dart';

class AddContainerController extends ReactiveController {
  final ReactiveList<ContainerModel> containerList = ReactiveList([]);

  addContainer(ContainerModel containerModel) {
    containerList.add(containerModel);
  }
}

class ContainerModel {
  String name;
  int age;
  int mobNo;

  ContainerModel({required this.name, required this.age, required this.mobNo});
}
