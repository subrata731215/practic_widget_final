import 'package:reactiv/reactiv.dart';

class HomepageController extends ReactiveController {
  ReactiveList<MainHomePageModel> contentList = ReactiveList(
    [
      MainHomePageModel(title: 'Ui', routes: Routes.uiHomePage),
      MainHomePageModel(title: 'Widget', routes: Routes.widgetHomePage),

    ],
  );
}

class Routes {
  static const mainHomepage = 'mainHomePage';
  static const uiHomePage = 'uiHomePage';
  static const widgetHomePage = 'widgetHomePage';
  static const addContainer = 'addContainer';
  static const containerWithText = 'containerWithText';
  static const checkBox = 'checkBox';
  static const dropDownButton = 'dropDownButton';
  static const listTile = 'listTile';
  static const listViewBuilder = 'listViewBuilder';
  static const textField = 'textField';
  static const randomNo = 'randomNo';
  static const slider = 'slider';
  static const addTwoNumber = 'addTwoNumber';
  static const dataTable = 'dataTable';
  static const datableList = 'dataTableList';
  static const cricketScore = 'scoreBoard';
  static const light = 'light';
  static const radio = 'radio';
  static const materialTheme = 'materialTheme';
  static const sharePreference = 'sharePreference';
  static const animation = 'animationLearn';
  static const delayAnimation = 'delayAnimation';
  static const flutterAnimation = 'flutterAnimation';
  static const oneTapAnimation = 'oneTapAnimation';
  static const stepper = 'stepper';
  static const hero = 'hero';
  static const bool = 'bool';
  static const gesture = 'gesture';
  static const callScreenSupriyo = 'callScreenSupriyo';
  static const messageScreen = 'messageScreen';
  static const audioPage = 'audioPage';
  static const logInUi = 'logInUi';
  static const visvaBharatiUi = 'visvaBharati';
  static const moneyTransferScreen = 'moneyTransferScreen';
  static const audioPlayer = 'audioPlayer';
  static const schoolUi = 'schoolUi';
  static const addBox = 'addBox';
  static const photoshop = 'photoshop';
  static const priceRange = 'priceRange';
  static const classModel = 'classModel';
  static const lottie = 'lottie';
  static const contactAdd = 'contactAdd';
  static const otpInputField = 'otpInputField';
  static const extraPractice = 'extraPractice';
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
