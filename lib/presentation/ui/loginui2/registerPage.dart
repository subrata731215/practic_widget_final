import 'package:flutter/material.dart';
import 'package:practic/presentation/ui/loginui2/utils.dart';
import 'package:practic/routes/routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool checkBoxCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff4e6ed9),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/caktas.jpeg'),
                fit: BoxFit.fill,
                opacity: -90)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 7),
              const Column(
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Create Your Account',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const TextFieldWidget(hintText: 'Username', icon: Icons.person),
              const SizedBox(height: 12),
              const TextFieldWidget(
                  hintText: 'Email', icon: Icons.email_outlined),
              const SizedBox(height: 12),
              const TextFieldWidget(
                  hintText: 'Password', icon: Icons.lock_open),
              const SizedBox(height: 12),
              const TextFieldWidget(
                  hintText: 'Confirm Password', icon: Icons.lock_open),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.white,
                          checkColor: Colors.black87,
                          value: checkBoxCheck,
                          onChanged: (check) {
                            setState(() {
                              checkBoxCheck = !checkBoxCheck;
                            });
                          }),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Remember me',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
              const SizedBox(height: 30),
              Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 120),
                      decoration: BoxDecoration(
                        color: const Color(0xff1E4471),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Text(
                        'REGISTER',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.loginPage);
                    },
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: 'Do you have an Account ?',
                              style: TextStyle(fontSize: 16)),
                          TextSpan(
                              text: '  logIn',
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
            ],
          ),
        ),
      ),
    );
  }
}
