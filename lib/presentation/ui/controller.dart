import 'package:reactiv/reactiv.dart';

import '../../routes/routes.dart';

class UiController extends ReactiveController {
  List<UiModel> uiList = ReactiveList([
    UiModel(title: 'AddFriendUi', routesName: Routes.addFriendUi),
    UiModel(title: 'adultCheck', routesName: Routes.adultCheck),
    UiModel(title: 'ageCalculator', routesName: Routes.ageCalculator),
    UiModel(title: 'Alcohol', routesName: Routes.alcohol),
    UiModel(title: 'AudioUi', routesName: Routes.audioScreen),
    UiModel(title: 'calculatorUi', routesName: Routes.calculatorUi),
    UiModel(title: 'CallUi', routesName: Routes.callScreenSupriyo),
    UiModel(title: 'ExtraUi', routesName: Routes.extraUi),
    UiModel(title: 'LoginUi2', routesName: Routes.logInUi2),
    UiModel(title: 'LoginUi', routesName: Routes.logInUi),
    UiModel(title: 'LoginUiNew', routesName: Routes.logInUiNew),
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
