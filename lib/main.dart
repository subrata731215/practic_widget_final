import 'package:flutter/material.dart';
import 'package:practic/programming_Language_Learn/class_model_31/class_model.dart';
import 'package:practic/programming_Language_Learn/contact_add_ui_with_language/contactadd.dart';
import 'package:practic/ui/audio_screen_23/audio.page.dart';
import 'package:practic/ui/call_21/callsupriyo.dart';
import 'package:practic/ui/loginui_24/loginui.dart';
import 'package:practic/ui/message_22/message.dart';
import 'package:practic/ui/moneyTransferUi_26/moneytransferui.dart';
import 'package:practic/ui/photoshop_30/photoshop.dart';
import 'package:practic/ui/school_ui/school.ui.dart';
import 'package:practic/ui/visva_bharati_ui_25/visva_bharati.dart';
import 'package:practic/widget_practice/addbox_27/addbox.dart';
import 'package:practic/widget_practice/addcontainer_1/container.dart';
import 'package:practic/widget_practice/addcontainer_1/containerwithtext.dart';
import 'package:practic/widget_practice/addtwonumber_9/addtwonumbers.dart';
import 'package:practic/widget_practice/animation_16/animation_one.dart';
import 'package:practic/widget_practice/animation_16/delayanimation.dart';
import 'package:practic/widget_practice/audioplayer_27/audioPlayer.dart';
import 'package:practic/widget_practice/boolpractice_19/bool_practice.dart';
import 'package:practic/widget_practice/checkBox_2/checkbox.dart';
import 'package:practic/widget_practice/datatable_10/datatable.dart';
import 'package:practic/widget_practice/datatable_10/datatablelist.dart';
import 'package:practic/widget_practice/dropdownbutton_3/dropDownButton.dart';
import 'package:practic/widget_practice/gesture_20/gesture.dart';
import 'package:practic/widget_practice/hero_18/hero_learn.dart';
import 'package:practic/widget_practice/light_12/light.dart';
import 'package:practic/widget_practice/listtile_4/listtile.class.dart';
import 'package:practic/widget_practice/listviewbuilder_5/listview.builder.dart';
import 'package:practic/widget_practice/lottie_31/lottie_learn.dart';
import 'package:practic/widget_practice/materialTheme_14/materialTheme.dart';
import 'package:practic/widget_practice/radio_13/radio.learn.dart';
import 'package:practic/widget_practice/randomnumber_7/randomNoGenerate.dart';
import 'package:practic/widget_practice/scoreBoard_11/cricket.score.dart';
import 'package:practic/widget_practice/share_preferences_15/sharePreferences.dart';
import 'package:practic/widget_practice/slider_8/slider.dart';
import 'package:practic/widget_practice/stepper_learn_17/stepper.learn.dart';
import 'package:practic/widget_practice/textField_6/textField.dart';
import 'homepage.controller.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: HomePage(),
      ),
      initialRoute: Routes.homepage,
      routes: {
        Routes.homepage: (context) => const HomePage(),
        Routes.addContainer: (context) => const AddContainer(),
        Routes.containerWithText: (context) => const ContainerWithText(),
        Routes.checkBox: (context) => const CheckBox(),
        Routes.dropDownButton: (context) => const DropDownButton(),
        Routes.listTile: (context) => const ListTileClass(),
        Routes.listViewBuilder: (context) => const ListViewBuilder(),
        Routes.textField: (context) => const TextFieldLearn(),
        Routes.randomNo: (context) => const RandomNoGenerate(),
        Routes.slider: (context) => const SliderLearn(),
        Routes.addTwoNumber: (context) => const AddTwoNumbers(),
        Routes.dataTable: (context) => const DataTableLearn(),
        Routes.datableList: (context) => const DataTableList(),
        Routes.cricketScore: (context) => const CricketScore(),
        Routes.light: (context) => const Light(),
        Routes.radio: (context) => const RadioLearn(),
        Routes.materialTheme: (context) => const MaterialTheme(),
        Routes.sharePreference: (context) => const SharePreferencesLearn(),
        Routes.animation: (context) => const AnimationLearn(),
        Routes.delayAnimation: (context) => const DelayAnimationLearn(),
        Routes.stepper: (context) => const StepperLearn(),
        Routes.hero: (context) => const HeroLearn(),
        Routes.bool: (context) => const BoolPractice(),
        Routes.gesture: (context) => const GestureLearn(),
        Routes.callScreenSupriyo: (context) => const CallSupriyo(),
        Routes.messageScreen: (context) => const MessageScreen(),
        Routes.audioPage: (context) => const AudioPage(),
        Routes.logInUi: (context) => const LoginUi(),
        Routes.visvaBharatiUi: (context) => const VisvaBharati(),
        Routes.moneyTransferScreen: (context) => const MoneyTransfer(),
        Routes.audioPlayer: (context) => const AudioPlayerLearn(),
        Routes.schoolUi: (context) => const SchoolUi(),
        Routes.addBox: (context) => const AddBox(),
        Routes.photoshop: (context) => const PhotoShop(),
        Routes.classModel: (context) => const ClassModelLearn(),
        Routes.lottie: (context) => const LottieLearn(),
        Routes.contactAdd: (context) => const ContactAdd(),
      },
    );
  }
}
