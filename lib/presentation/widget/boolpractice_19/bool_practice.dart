import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import '../../../routes/routes.dart';

void main() {
  runApp(const BoolPractice());
}

class BoolPractice extends StatefulWidget {
  const BoolPractice({Key? key}) : super(key: key);

  @override
  State<BoolPractice> createState() => _BoolPracticeState();
}

class _BoolPracticeState extends State<BoolPractice> {
  bool isChecked = false;
  bool downContainer = false;
  String myName = 'Subrata';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: appbarWidget(context, appBarTitle: 'Bool', trailingRoutes: Routes.checkBox),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isChecked == true
                  ? Text(
                      myName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 40),
                    )
                  : const Text('Sumanta'),
              Checkbox(
                  value: isChecked,
                  onChanged: (val) {
                    setState(() {
                      isChecked = val!;
                    });
                  }),
              if (isChecked)
                Container(
                  height: 20,
                  width: 30,
                  color: Colors.red,
                ),
              const SizedBox(height: 30),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      downContainer = !downContainer;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 90,
                    color: downContainer ? Colors.green : Colors.blue,
                    child: const Center(
                      child: Text(
                        'Click',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ))
            ],
          ),

      ),
    );
  }
}
