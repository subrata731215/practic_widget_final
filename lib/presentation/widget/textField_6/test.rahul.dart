import 'package:flutter/material.dart';

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            displayMedium: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
            displaySmall: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.90), BlendMode.darken),
                  image: const AssetImage(
                    'assets/back.png',
                  ))),
          child: Column(
            children: [
              sizedBoxH40,
              Text(
                'LazyCount',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              sizedBoxH40,
              Text(
                'Log In',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              sizedBoxH40,
              Center(
                child: Container(
                  // width: 320,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Enter phone number',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      sizedBoxH20,
                      const TextFormFieldWidget(
                        prefix: '91  ',
                      ),
                      sizedBoxH40,
                      const Text(
                        'Enter Password',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      sizedBoxH20,
                      const TextFormFieldWidget(
                        prefix: '@ ',
                      ),
                      sizedBoxH40,
                      Center(
                        child: ElevatedButton(
                            style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder()),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'PROCEED',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextFormFieldWidget extends StatelessWidget {
  final String prefix;

  const TextFormFieldWidget({super.key, required this.prefix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          prefixText: prefix,
          prefixStyle: const TextStyle(color: Colors.white38),
          filled: true,
          fillColor: Colors.black,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white38,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white38,
            ),
          )),
    );
  }
}

SizedBox sizedBoxH40 = const SizedBox(
  height: 40,
);
SizedBox sizedBoxH20 = const SizedBox(
  height: 20,
);
