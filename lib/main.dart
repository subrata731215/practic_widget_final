import 'package:flutter/material.dart';
import 'package:practic/presentation/homepage/main_homepage.dart';
import 'package:practic/presentation/ui/audio_screen_23/audio.page.dart';
import 'package:practic/presentation/ui/call_21/callsupriyo.dart';
import 'package:practic/presentation/ui/ui_homepage.dart';
import 'package:practic/presentation/ui/loginui_24/loginui.dart';
import 'package:practic/presentation/ui/message_22/message.dart';
import 'package:practic/presentation/ui/moneyTransferUi_26/moneytransferui.dart';
import 'package:practic/presentation/ui/photoshop_30/photoshop.dart';
import 'package:practic/presentation/ui/price_range_ui/prrice.range.dart';
import 'package:practic/presentation/ui/school_ui/school.ui.dart';
import 'package:practic/presentation/ui/visva_bharati_ui_25/visva_bharati.dart';
import 'package:practic/presentation/ui/whatsapp/whatsapp.dart';
import 'package:practic/presentation/widget/addbox_27/addbox.dart';
import 'package:practic/presentation/widget/addcontainer_1/container.dart';
import 'package:practic/presentation/widget/addcontainer_1/containerwithtext.dart';
import 'package:practic/presentation/widget/addtwonumber_9/addtwonumbers.dart';
import 'package:practic/presentation/widget/ageCheck/agecheck.dart';
import 'package:practic/presentation/widget/animation_16/mainpage/flutter_animation.dart';
import 'package:practic/presentation/widget/animation_one_tap/1.only.ontap.animation.dart';
import 'package:practic/presentation/widget/audioplayer_27/audioPlayer.dart';
import 'package:practic/presentation/widget/boolpractice_19/bool_practice.dart';
import 'package:practic/presentation/widget/checkBox_2/checkbox.dart';
import 'package:practic/presentation/widget/class_model_31/class_model.dart';
import 'package:practic/presentation/widget/contact_add_ui_with_language/contactadd.dart';
import 'package:practic/presentation/widget/datatable_10/datatable.dart';
import 'package:practic/presentation/widget/dropdownbutton_3/dropDownButton.dart';
import 'package:practic/presentation/widget/extra/extrapractice.dart';
import 'package:practic/presentation/widget/gesture_20/gesture.dart';
import 'package:practic/presentation/widget/hero_18/hero_learn.dart';
import 'package:practic/presentation/widget/light_12/light.dart';
import 'package:practic/presentation/widget/listtile_4/listtile.class.dart';
import 'package:practic/presentation/widget/lottie_31/lottie_learn.dart';
import 'package:practic/presentation/widget/materialTheme_14/materialTheme.dart';
import 'package:practic/presentation/widget/otp_input_field/otpinputfield.dart';
import 'package:practic/presentation/widget/radio_13/radio.learn.dart';
import 'package:practic/presentation/widget/randomnumber_7/randomNoGenerate.dart';
import 'package:practic/presentation/widget/scoreBoard_11/cricket.score.dart';
import 'package:practic/presentation/widget/share_preferences_15/sharePreferences.dart';
import 'package:practic/presentation/widget/slider_8/slider.dart';
import 'package:practic/presentation/widget/stepper_learn_17/stepper.learn.dart';
import 'package:practic/presentation/widget/widget_homepage.dart';
import 'package:practic/routes/routes.dart';
import 'presentation/widget/listviewbuilder_5/listview.builder.dart';
import 'presentation/widget/textField_6/textField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          elevatedButtonTheme: const ElevatedButtonThemeData(
              style: ButtonStyle(
                  alignment: Alignment.center,
                  backgroundColor: MaterialStatePropertyAll(Colors.white)))),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: MainHomePage(),
      ),
      initialRoute: Routes.ageCheck,
      routes: {
        /// Main PageRoutes
        Routes.mainHomepage: (context) => const MainHomePage(),

        /// UI PageRoutes
        Routes.uiHomePage: (context) => const UiHomePage(),
        Routes.audioPage: (context) => const AudioPage(),
        Routes.callScreenSupriyo: (context) => const CallSupriyo(),
        Routes.logInUi: (context) => const LoginUi(),
        Routes.messageScreen: (context) => const MessageScreen(),
        Routes.moneyTransferScreen: (context) => const MoneyTransfer(),
        Routes.photoshop: (context) => const PhotoShop(),
        Routes.priceRange: (context) => const PriceRange(),
        Routes.schoolUi: (context) => const SchoolUi(),
        Routes.visvaBharatiUi: (context) => const VisvaBharati(),
        Routes.whatsApp: (context) => const WhatsAppUi(),

        /// Widget PageRoutes
        Routes.widgetHomePage: (context) => const WidgetHomePage(),
        Routes.addBox: (context) => const AddBox(),
        Routes.addContainer: (context) => const AddContainer(),
        Routes.addTwoNumber: (context) => const AddTwoNumbers(),
        Routes.ageCheck: (context) => const AgeCheckk(),
        Routes.flutterAnimation: (context) => const FlutterAnimation(),
        Routes.oneTapAnimation: (context) => const OneTapAnimation(),
        Routes.audioPlayer: (context) => const AudioPlayerLearn(),
        Routes.bool: (context) => const BoolPractice(),
        Routes.checkBox: (context) => const CheckBox(),
        Routes.classModel: (context) => const ClassModelLearn(),
        Routes.contactAdd: (context) => const ContactAdd(),
        Routes.dataTable: (context) => const DataTableLearn(),
        Routes.dropDownButton: (context) => const DropDownButtonLearn(),
        Routes.extraPractice: (context) => const ExtraPractice(),

        Routes.gesture: (context) => const GestureLearn(),
        Routes.hero: (context) => const HeroLearn(),
        Routes.light: (context) => const Light(),
        Routes.listTile: (context) => const ListTileClass(),
        Routes.listViewBuilder: (context) => const ListViewBuilderLearn(),
        Routes.lottie: (context) => const LottieLearn(),
        Routes.materialTheme: (context) => const MaterialTheme(),
        Routes.otpInputField: (context) => const OtpInputField(),
        Routes.radio: (context) => const RadioLearn(),
        Routes.randomNo: (context) => const RandomNoGenerate(),
        Routes.cricketScore: (context) => const CricketScore(),
        Routes.sharePreference: (context) => const SharePreferencesLearn(),
        Routes.slider: (context) => const SliderLearn(),
        Routes.stepper: (context) => const StepperLearn(),
        Routes.textField: (context) => const TextFieldLearn(),

        /// Programming Routes
        Routes.containerWithText: (context) => const ContainerWithText(),
      },
    );
  }
}
