import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practic/constant.dart';
import '../../../routes/routes.dart';

class LottieLearn extends StatelessWidget {
  const LottieLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'Lottie', trailingRoutes: Routes.materialTheme),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Lottie.network(
              'https://lottie.host/29a31e96-9699-4d98-8d90-62'
              '499f6f9262/4fonG1emm6.json',
              height: 200,
              width: 200),
          Lottie.asset('assets/lottie/data.json', height: 200, width: 200),
          Lottie.asset('assets/lottie/love.json', height: 200, width: 200),
          Lottie.network(
            'https://lottie.host/dd52050a-f2ab-4367-af82-08b1874626bd/Ip9QDTOuDq.json',
            height: 400,
            width: 400,
          ),
        ],
      ),
    );
  }
}
