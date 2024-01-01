import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practic/presentation/ui/adultCheck/nextPage.dart';

class CheckAdultorNot extends StatefulWidget {
  const CheckAdultorNot({super.key});

  @override
  State<CheckAdultorNot> createState() => _CheckAdultorNotState();
}

class _CheckAdultorNotState extends State<CheckAdultorNot> {
  int inPutAge = 0;
  String inputName='';
  String errorText = 'You Can Not Enter Adult Page';

  String niruAsset = 'assets/niru.jpg';
  String muktaAsset = 'assets/mukto.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check And Pass'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                inputName=value;
                if (value.isNotEmpty) {
                 // inPutAge = int.parse(value);

                }
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Enter Your Age',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    // if (inPutAge < 18 || inPutAge > 40) {
                    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //       content: Text('You Can Not Enter Funny Page')));
                    // } else {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => NextPage()));
                    // }
                    if (inPutAge < 18 || inPutAge > 40) {
                      muktaAsset;
                    } else {
                      niruAsset;
                    }
                  });
                },
                child: const Text(
                  'Check',
                  style: TextStyle(color: Colors.green),
                )),
         if(inputName.isNotEmpty)   Expanded(child: Center(child: Image.asset('assets/$inputName.jpg'),)),
            // if (inPutAge > 0)
            //   Expanded(
            //       child: Center(
            //           child: Image.asset(inPutAge < 18 || inPutAge > 40
            //               ? muktaAsset
            //               : niruAsset))),
            if (inPutAge > 0)
              Expanded(
                  child: Center(
                child: Lottie.asset(inPutAge < 18 || inPutAge > 40
                    ? 'assets/lottie/hand.json'
                    : 'assets/lottie/love.json'),
              ))
          ],
        ),
      ),
    );
  }
}
