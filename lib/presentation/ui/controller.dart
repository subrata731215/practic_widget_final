import 'package:reactiv/reactiv.dart';
import '../homepage/homepage.controller.dart';

class UiController extends ReactiveController {
  List<UiModel> uiList = ReactiveList([
    UiModel(title: 'AudioUi', routesName: Routes.audioPage),
    UiModel(title: 'CallUi', routesName: Routes.callScreenSupriyo),
    UiModel(title: 'LoginUi', routesName: Routes.logInUi),
    UiModel(title: 'MessageUi', routesName: Routes.messageScreen),
    UiModel(title: 'MoneyTransferUi', routesName: Routes.moneyTransferScreen),
    UiModel(title: 'PhotoShopUi', routesName: Routes.photoshop),
    UiModel(title: 'PriceRangeUi', routesName: Routes.priceRange),
    UiModel(title: 'SchoolUi', routesName: Routes.schoolUi),
    UiModel(title: 'Visva Bharati Ui', routesName: Routes.visvaBharatiUi),
  ]);
}

class UiModel {
  String title;
  String routesName;

  UiModel({required this.title, required this.routesName});
}
