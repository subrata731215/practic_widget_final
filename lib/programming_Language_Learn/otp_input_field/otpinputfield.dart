import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/presentation/homepage/homepage.controller.dart';

class OtpInputField extends StatelessWidget {
  const OtpInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appbarWidget(
        context,
        appBarTitle: 'OtpInputField',
        trailingRoutes: Routes.otpInputField,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16.0, right: 16, top: 16, bottom: 450),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Verification Code',
              style: TextStyle(
                  fontWeight: FontWeight.w900, letterSpacing: 1, fontSize: 25),
            ),
            const SizedBox(height: 10),
            const Text('We have sent the code verification to'),
            Row(
              children: [
                const Text(
                  'Subratavb2012@gmail.com',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Change your email?',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 64,
                    width: 68,
                    child: TextFormField(
                      onSaved: (pin1) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 68,
                    child: TextFormField(
                      onSaved: (pin2) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 68,
                    child: TextFormField(
                      // onSaved: (pin3) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 68,
                    child: TextFormField(
                      onSaved: (pin4) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      //style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: RichText(
                text: const TextSpan(
                    text: 'Resend code after',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    children: [
                      WidgetSpan(child: SizedBox(width: 10)),
                      TextSpan(
                          text: '1:36 sec',
                          style: TextStyle(fontSize: 25, color: Colors.blue)),
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Resend',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                              title: Text('Done'),
                            ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
