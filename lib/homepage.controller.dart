import 'package:reactiv/reactiv.dart';

class HomepageController extends ReactiveController {
  ReactiveList<HomePageModel> widgetList = ReactiveList([
    HomePageModel(title: 'AddContainer'),
    HomePageModel(title: 'CheckBox'),
    HomePageModel(title: 'DropDownButton'),
    HomePageModel(title: 'ListTile'),
    HomePageModel(title: 'ListView.Builder'),
    HomePageModel(title: 'TextField'),
    HomePageModel(title: 'RandomNo'),
    HomePageModel(title: 'Slider'),
    HomePageModel(title: 'AddTwoNumber'),
    HomePageModel(title: 'DataTable'),
    HomePageModel(title: 'DataTableList'),
    HomePageModel(title: 'CricketScore'),
    HomePageModel(title: 'Light'),
    HomePageModel(title: 'Radio'),
    HomePageModel(title: 'MaterialTheme'),
    HomePageModel(title: 'SharePreference'),
    HomePageModel(title: 'Animation'),
    HomePageModel(title: 'Stepper'),
    HomePageModel(title: 'Hero'),
    HomePageModel(title: 'Bool'),
    HomePageModel(title: 'Gesture'),
    HomePageModel(title: 'CallUi'),
    HomePageModel(title: 'MessageUi'),
    HomePageModel(title: 'AudioPageUi'),
    HomePageModel(title: 'LogInPageUi'),
    HomePageModel(title: 'Visva_Bharati Ui'),
    HomePageModel(title: 'MoneyTransferUi'),
    HomePageModel(title: 'AudioPlayerUi'),
    HomePageModel(title: 'AddBox'),
    HomePageModel(title: 'PhotoShop'),
  ]);

  ReactiveList<String> routes = ReactiveList([
    Routes.addContainer,
    Routes.checkBox,
    Routes.dropDownButton,
    Routes.listTile,
    Routes.listViewBuilder,
    Routes.textField,
    Routes.randomNo,
    Routes.slider,
    Routes.addTwoNumber,
    Routes.dataTable,
    Routes.datableList,
    Routes.cricketScore,
    Routes.light,
    Routes.radio,
    Routes.materialTheme,
    Routes.sharePreference,
    Routes.animation,
    Routes.stepper,
    Routes.hero,
    Routes.bool,
    Routes.gesture,
    Routes.callScreenSupriyo,
    Routes.messageScreen,
    Routes.audioPage,
    Routes.logInUi,
    Routes.visvaBharatiUi,
    Routes.moneyTransferScreen,
    Routes.audioPlayer,
    Routes.addBox,
    Routes.photoshop,

  ]);
}

class Routes {
  static const homepage = 'homePage';
  static const addContainer = 'addContainer';
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
  static const addBox = 'addBox';
  static const photoshop = 'photoshop';
}

class HomePageModel {
  final String title;

  HomePageModel({required this.title});
}
