import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/presentation/widget/finance_margin_calculator/controller.dart';
import 'package:reactiv/reactiv.dart';
import '../../../routes/routes.dart';

class FinanceCalculator extends ReactiveStateWidget<FinanceController> {
  @override
  FinanceController bindController() => FinanceController();

  const FinanceCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appbarWidget(context,
          appBarTitle: 'Finance Calculator', trailingRoutes: Routes.focusNode),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Finance Margin Calculator',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: const Color(0xffE6E6FF),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 3)),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Cost Price: -',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        onChanged: (cost) {
                          controller.cost.value = cost;
                          if(cost.isEmpty){
                            controller.cost.value='0';
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder()),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text(
                      'Margin (%) : -',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        onChanged: (margin) {

                          controller.margin.value = margin;
                          if(margin.isEmpty){
                            controller.margin.value='0';
                          }
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder()),
                      ),
                    )
                  ],
                ),
                TextButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xffF0AD4E))),
                    onPressed: () {
                      controller.cost.value = '0';
                      controller.margin.value = '0';
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.white),
                    )),
                Observer2(
                    listenable: controller.cost,
                    listenable2: controller.margin,
                    listener: (cost, margin) {
                      return Column(
                        children: [
                          Text(
                              'Selling Price : ${controller.sellingPrice().toStringAsFixed(2)}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25,
                                  letterSpacing: 1)),
                          Text(
                              'Profit : ${controller.profit().toStringAsFixed(2)}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25,
                                  letterSpacing: 1)),
                        ],
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
