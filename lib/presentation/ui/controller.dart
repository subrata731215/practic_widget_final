import 'package:reactiv/reactiv.dart';

import '../../routes/routes.dart';

class UiController extends ReactiveController {
  List<UiModel> uiList = ReactiveList([
    UiModel(title: 'AddFriendUi', routesName: Routes.addFriendUi),
    UiModel(title: 'AudioUi', routesName: Routes.audioScreen),
    UiModel(title: 'CallUi', routesName: Routes.callScreenSupriyo),
    UiModel(title: 'LoginUi2', routesName: Routes.logInUi2),
    UiModel(title: 'LoginUi', routesName: Routes.logInUi),
    UiModel(title: 'MessageUi', routesName: Routes.messageScreen),
    UiModel(title: 'MoneyTransferUi', routesName: Routes.moneyTransferScreen),
    UiModel(title: 'PhotoShopUi', routesName: Routes.photoshop),
    UiModel(title: 'PriceRangeUi', routesName: Routes.priceRange),
    UiModel(title: 'SchoolUi', routesName: Routes.schoolUi),
    UiModel(title: 'StopWatch', routesName: Routes.stopwatch),
    UiModel(title: 'Visva Bharati Ui', routesName: Routes.visvaBharatiUi),
    UiModel(title: 'WhatsApp Ui', routesName: Routes.whatsApp),
  ]);
}

class UiModel {
  String title;
  String routesName;

  UiModel({required this.title, required this.routesName});
}
