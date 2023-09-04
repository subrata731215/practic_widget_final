import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/presentation/widget/textField_6/test.rahul.dart';
import '../../../routes/routes.dart';

void main() {
  runApp(const TextFieldLearn());
}

// GlobalKey<FormState> key = GlobalKey<FormState>();

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  TextEditingController emailTEC = TextEditingController();
  TextEditingController passTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: appbarWidget(context,
              appBarTitle: 'TextField', trailingRoutes: Routes.mainHomepage),
          body: SingleChildScrollView(
            child: Form(
              child: Center(
                child: SizedBox(
                  width: 350,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          return null;
                        },
                        controller: emailTEC,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            size: 20,
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide:
                                const BorderSide(color: Colors.red, width: 4),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide:
                                const BorderSide(color: Colors.green, width: 4),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: const BorderSide(
                                color: Colors.yellow, width: 4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (passTEC.text.isEmpty) {
                            return 'Fill in the Blanks';
                          }
                          return null;
                        },
                        controller: passTEC,
                        obscureText: true,
                        obscuringCharacter: '#',
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: 20,
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.visibility),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide:
                                const BorderSide(color: Colors.red, width: 4),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide:
                                const BorderSide(color: Colors.green, width: 4),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: const BorderSide(
                                color: Colors.yellow, width: 4),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('LogIn'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyTest()));
                        },
                        child: const Text('Next Test Rahul'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
