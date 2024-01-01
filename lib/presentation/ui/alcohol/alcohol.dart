import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alcohol extends StatefulWidget {
  const Alcohol({super.key});

  @override
  State<Alcohol> createState() => _AlcoholState();
}

class _AlcoholState extends State<Alcohol> {

   int  inPutAge=0 ;

  String canBuyAlcohol = 'Buy Alcohol';
  String notCanBuyAlcohol = ' Not Buy Alcohol';


  void calCulate() {
    if (inPutAge < 18 || inPutAge > 40) {
      notCanBuyAlcohol;
    } else {
      canBuyAlcohol;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('Alcohol Buy Restriction Code'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  inPutAge = int.parse(value);
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    calCulate();
                    print(inPutAge);
                  });
                },
                child: const Text(
                  'Check',
                  style: TextStyle(color: Colors.green),
                )),

              Text(
                inPutAge <18 || inPutAge>40 ? notCanBuyAlcohol:canBuyAlcohol,
                style: const TextStyle(color: Colors.orange, fontSize: 40),
              ),
          ],
        ),
      ),
    );
  }
}
