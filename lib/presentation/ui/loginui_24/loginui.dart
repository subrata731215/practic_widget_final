import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import '../../../routes/routes.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQueryHeight = MediaQuery.of(context).size.height;
    double mediaQueryWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: myAppBarWidget(context,
            appBarTitle: 'LogInUi', trailingRoutes: Routes.messageScreen),
        backgroundColor: const Color(0xff333333),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 10,
              child: Container(
                height: mediaQueryHeight / 3.5,
                width: mediaQueryWidth / 1.1,
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(500))),
              ),
            ),
            Positioned(
              top: mediaQueryHeight / 6.3,
              right: mediaQueryWidth / 6,
              child: const CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('assets/joydeb.jpg'),
              ),
            ),
            Positioned(
              top: mediaQueryHeight / 2.9,
              left: mediaQueryWidth / 10,
              child: const Text(
                'Welcome \n Back!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              top: mediaQueryHeight / 2.2,
              left: mediaQueryWidth / 12,
              right: mediaQueryWidth / 12,
              child: SizedBox(
                height: mediaQueryHeight,
                width: mediaQueryWidth,
                child: Column(
                  children: [
                    TextFormField(
                      style:
                          const TextStyle(color: Colors.orange, fontSize: 20),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(25),
                        suffixIcon: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Icon(
                            Icons.person_rounded,
                            size: 40,
                            color: Color(0xffBE980F),
                          ),
                        ),
                        hintText: 'Enter Your Email',
                        hintStyle:
                            const TextStyle(color: Colors.white, fontSize: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffA5944E), width: 2),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffA5944E), width: 2),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      style:
                          const TextStyle(color: Colors.orange, fontSize: 20),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(25),
                        suffixIcon: const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Icon(
                            Icons.password,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        hintText: 'Enter Your Password',
                        hintStyle:
                            const TextStyle(color: Colors.white, fontSize: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffA5944E), width: 2),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffA5944E), width: 2),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: mediaQueryHeight / 1.43,
              right: mediaQueryHeight / 20,
              child: Text(
                'Forgot password'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 38.0),
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            FloatingActionButton(
              elevation: 5,
              backgroundColor: Colors.orange,
              onPressed: () {},
              child: const Icon(
                Icons.arrow_forward,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
