import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/presentation/ui/age_calculator/age_controller.dart';
import 'package:reactiv/reactiv.dart';
import '../../../routes/routes.dart';

class AgeCalculator extends ReactiveStateWidget<AgeController> {
  @override
  AgeController bindController() => AgeController();

  AgeCalculator({Key? key}) : super(key: key);
  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();
  final FocusNode field3 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: appbarWidget(context,
          appBarTitle: 'Age Calculator', trailingRoutes: Routes.audioScreen),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 400,
          width: 350,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.black54, blurRadius: 10, offset: Offset.zero),
            BoxShadow(
                color: Colors.black54, blurRadius: 30, offset: Offset.zero),
          ]),
          child: Column(
            children: [
              Text(
                'Age calculator'.toUpperCase(),
                style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                    fontSize: 23),
              ),
              const Divider(color: Colors.green, thickness: 2),
              Text(
                'Enter Your Date of Birth'.toUpperCase(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 16),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 20),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 2,
                      onSubmitted: (val) {
                        FocusScope.of(context).requestFocus(field2);
                      },
                      onChanged: (date) {
                        int k = int.parse(date);
                        if (k > 1 && k < 32) {
                          controller.date = k;
                        }
                      },
                      focusNode: field1,
                      decoration: InputDecoration(
                        hintText: 'DD',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 20),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 2,
                      onSubmitted: (val) {
                        FocusScope.of(context).requestFocus(field3);
                      },
                      onChanged: (month) {
                        int k = int.parse(month);
                        if (k > 1 && k < 13) {
                          controller.month = k;
                        }
                      },
                      focusNode: field2,
                      decoration: InputDecoration(
                        hintText: 'MM',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 20),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      onSubmitted: (val) {
                        FocusScope.of(context).requestFocus(field1);
                      },
                      onChanged: (year) {
                        int k = int.parse(year);
                        if (k > 1930 && k < DateTime.now().year) {
                          controller.year = k;
                        }
                      },
                      focusNode: field3,
                      decoration: InputDecoration(
                        hintText: 'YYYY',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue),
                          padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Get Age',
                          style: TextStyle(fontSize: 30),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                'Your Age is ${controller.finalYear()} Years ${controller.finalMonth()} Months ${controller.finalDate()} Day\'s.',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
