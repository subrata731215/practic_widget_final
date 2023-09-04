import 'package:reactiv/reactiv.dart';

import '../../routes/routes.dart';

class HomepageController extends ReactiveController {
  ReactiveList<MainHomePageModel> contentList = ReactiveList(
    [
      MainHomePageModel(title: 'Ui', routes: Routes.uiHomePage),
      MainHomePageModel(title: 'Widget', routes: Routes.widgetHomePage),

    ],
  );




}


class HomePageModel {
  final String title;
  final String routes;

  HomePageModel({required this.title, required this.routes});
}

class MainHomePageModel {
  final String title;
  final String routes;

  MainHomePageModel({required this.title, required this.routes});
}
