import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practic/programming_Language_Learn/extra/controller.dart';
import 'package:reactiv/reactiv.dart';

class AgeCheckk extends ReactiveStateWidget<ExtraController> {
  const AgeCheckk({Key? key}) : super(key: key);

  @override
  ExtraController bindController() => ExtraController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Observer(
            listenable: controller.age,
            listener: (age) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    onChanged: (newAge) {
                      controller.age.value = newAge;
                    },
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_forward))),
                  ),
                  const SizedBox(height: 20),
                  controller.age.value=='17'
                      ? const Text('already exist')
                      : Text(
                          age.toUpperCase(),
                          style: const TextStyle(color: Colors.red, fontSize: 30),
                        )
                ],
              );
            }),
      ),
    );
  }
}
