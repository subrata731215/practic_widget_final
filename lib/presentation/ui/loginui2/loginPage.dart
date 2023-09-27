import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practic/presentation/ui/loginui2/utils.dart';
import 'package:practic/routes/routes.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff4e6ed9),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: -200,
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(200),
                        image: const DecorationImage(
                            alignment: Alignment.bottomCenter,
                            //  fit: BoxFit.fill,
                            image: AssetImage('assets/manwithcomputer.jpeg'))),
                  ),
                ),
              ],
            ),
          ),
          const Column(
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'LogIn Your Account',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const TextFieldWidget(
                  hintText: 'UserName',
                  icon: Icons.person,
                ),
                const SizedBox(height: 16),
                const TextFieldWidget(
                  hintText: 'Password',
                  icon: Icons.lock,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.black87,
                            value: isCheck,
                            onChanged: (check) {
                              setState(() {
                                isCheck = !isCheck;
                              });
                            }),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Remember me',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ))
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900),
                        )),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 150),
                    decoration: BoxDecoration(
                      color: const Color(0xff1E4471),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, Routes.registerPage);
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Don\'t have an Account ?',
                            style: TextStyle(fontSize: 16)),
                        TextSpan(
                            text: '  Sign Up',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

