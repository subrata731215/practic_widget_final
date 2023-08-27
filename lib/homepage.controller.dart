import 'package:reactiv/reactiv.dart';

class HomepageController extends ReactiveController {
  ReactiveList<HomePageModel> widgetList = ReactiveList([
    HomePageModel(title: 'AddContainer', routes: Routes.addContainer),
    HomePageModel(title: 'ContainerWithText', routes: Routes.containerWithText),
    HomePageModel(title: 'CheckBox', routes: Routes.checkBox),
    HomePageModel(title: 'DropDownButton', routes: Routes.dropDownButton),
    HomePageModel(title: 'ListTile', routes: Routes.listTile),
    HomePageModel(title: 'ListView.Builder', routes: Routes.listViewBuilder),
    HomePageModel(title: 'TextField', routes: Routes.textField),
    HomePageModel(title: 'RandomNo', routes: Routes.randomNo),
    HomePageModel(title: 'Slider', routes: Routes.slider),
    HomePageModel(title: 'AddTwoNumber', routes: Routes.addTwoNumber),
    HomePageModel(title: 'DataTable', routes: Routes.dataTable),
    HomePageModel(title: 'CricketScore', routes: Routes.cricketScore),
    HomePageModel(title: 'Light', routes: Routes.light),
    HomePageModel(title: 'Radio', routes: Routes.radio),
    HomePageModel(title: 'MaterialTheme', routes: Routes.materialTheme),
    HomePageModel(title: 'SharePreference', routes: Routes.sharePreference),
    HomePageModel(title: 'Animation', routes: Routes.animation),
    HomePageModel(title: 'DelayAnimation', routes: Routes.delayAnimation),
    HomePageModel(title: 'FlutterAnimation', routes: Routes.flutterAnimation),
    HomePageModel(title: 'Stepper', routes: Routes.stepper),
    HomePageModel(title: 'Hero', routes: Routes.hero),
    HomePageModel(title: 'Bool', routes: Routes.bool),
    HomePageModel(title: 'Gesture', routes: Routes.gesture),
    HomePageModel(title: 'CallUi', routes: Routes.callScreenSupriyo),
    HomePageModel(title: 'MessageUi', routes: Routes.messageScreen),
    HomePageModel(title: 'AudioPageUi', routes: Routes.audioPage),
    HomePageModel(title: 'LogInPageUi', routes: Routes.logInUi),
    HomePageModel(title: 'Visva_Bharati Ui', routes: Routes.visvaBharatiUi),
    HomePageModel(title: 'MoneyTransferUi', routes: Routes.moneyTransferScreen),
    HomePageModel(title: 'AudioPlayerUi', routes: Routes.audioPlayer),
    HomePageModel(title: 'schoolUi', routes: Routes.schoolUi),
    HomePageModel(title: 'AddBox', routes: Routes.addBox),
    HomePageModel(title: 'ExtraPractice', routes: Routes.extraPractice),
    HomePageModel(title: 'PhotoShop', routes: Routes.photoshop),
    HomePageModel(title: 'ClassModel', routes: Routes.classModel),
    HomePageModel(title: 'Lottie', routes: Routes.lottie),
    HomePageModel(title: 'ContactAdd', routes: Routes.contactAdd),
    HomePageModel(title: 'OtpInputField', routes: Routes.otpInputField),
  ]);
}

class Routes {
  static const homepage = 'homePage';
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
