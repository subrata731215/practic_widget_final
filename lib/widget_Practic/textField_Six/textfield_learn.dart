import 'package:flutter/material.dart';
import 'package:practic/main.dart';

void main(){
  runApp(TextFieldLearn());
}

GlobalKey<FormState> key = GlobalKey<FormState>();

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
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('TextField'),
            centerTitle: true,
            automaticallyImplyLeading: true,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.randomNoGenerate);
                },
                icon: Icon(Icons.arrow_forward),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Form(
              key: key,
              child: Center(
                child: Container(
                  width: 350,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {},
                        controller: emailTEC,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            size: 20,
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: BorderSide(color: Colors.red, width: 4),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide:
                                BorderSide(color: Colors.green, width: 4),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide:
                                BorderSide(color: Colors.yellow, width: 4),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (passTEC.text.isEmpty) {
                            return 'Fill in the Blanks';
                          }
                        },
                        controller: passTEC,
                        obscureText: true,
                        obscuringCharacter: '#',
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 20,
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.visibility),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: BorderSide(color: Colors.red, width: 4),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide:
                                BorderSide(color: Colors.green, width: 4),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide:
                                BorderSide(color: Colors.yellow, width: 4),
                          ),
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          String emailText = emailTEC.text;
                          String passText = passTEC.text;
                        },
                        child: Text('LogIn'),
                      ),

                      TextFormField(

                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    ));
  }
}
