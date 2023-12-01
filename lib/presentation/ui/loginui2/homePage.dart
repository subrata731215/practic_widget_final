import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import 'package:practic/routes/routes.dart';

class LogInUi2 extends StatefulWidget {
  const LogInUi2({Key? key}) : super(key: key);

  @override
  State<LogInUi2> createState() => _LogInUi2State();
}

class _LogInUi2State extends State<LogInUi2> {
  bool? isTap;
  Color loginColor = const Color(0xff1E4471);
  Color registerColor = const Color(0xff4e6ed9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4e6ed9),
      appBar: myAppBarWidget(context,
          appBarTitle: 'LogInUi2', trailingRoutes: Routes.logInUi),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/sunflower.png', scale: 3),
            const Column(
              children: [
                Text(
                  'Plantly',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  'Can Seem you Plant tree today\n loream ipsum dollor set amet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      isTap = true;

                      if (isTap == true) {
                        loginColor = const Color(0xff1E4471);
                        registerColor = const Color(0xff4e6ed9);
                        Navigator.pushNamed(context, Routes.loginPage);
                      } else {
                        loginColor = const Color(0xff4e6ed9);
                      }
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 150),
                    decoration: BoxDecoration(
                        color: loginColor,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.white, width: 2)),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      isTap = true;
                      if (isTap == true) {
                        registerColor = const Color(0xff1E4471);
                        loginColor = const Color(0xff4e6ed9);
                        Navigator.pushNamed(context, Routes.registerPage);
                      } else {
                        registerColor = const Color(0xff4e6ed9);
                      }
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 135),
                    decoration: BoxDecoration(
                        color: registerColor,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.white, width: 2)),
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
