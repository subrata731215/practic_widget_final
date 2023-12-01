import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import 'package:practic/presentation/ui/calculator/controller.dart';
import 'package:reactiv/reactiv.dart';
import '../../../routes/routes.dart';

class CalculatorUi extends ReactiveStateWidget<CalculatorController> {
  const CalculatorUi({Key? key}) : super(key: key);

  @override
  CalculatorController bindController() => CalculatorController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: myAppBarWidget(context,
          appBarTitle: 'CalculatorUi',
          trailingRoutes: Routes.callScreenSupriyo),
      body: Center(
        child: Container(
          height: height / 1.2,
          width: width,
          color: Colors.grey,
          child: Column(
            children: [
              Container(
                height: 60,
                width: width / 1.2,
                margin: const EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.red, width: 5),
                  // borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(color: Colors.orange, offset: Offset(4, 4)),
                    BoxShadow(color: Colors.orange, offset: Offset(-4, -4)),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Button',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
