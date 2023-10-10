import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../routes/routes.dart';

class FocusNodeLearn extends StatelessWidget {
   FocusNodeLearn({Key? key}) : super(key: key);

 final FocusNode field1=FocusNode();
 final FocusNode field2=FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'FocusNode', trailingRoutes: Routes.gesture),
      body:  Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextField(
              onSubmitted: (value){
                FocusScope.of(context).requestFocus(field2);
              },
              focusNode:field1,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.lightGreen,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              onSubmitted: (value){
                FocusScope.of(context).requestFocus(field1);
              },
              focusNode: field2,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.lightGreen,
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
