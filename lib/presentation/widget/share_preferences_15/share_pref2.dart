import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Share_Pref2 extends StatefulWidget {
  @override
  State<Share_Pref2> createState() => _Share_Pref2State();
}

class _Share_Pref2State extends State<Share_Pref2> {
  final TextEditingController nameController = TextEditingController();
  String nameValue = 'No Name Saved';

  void getValue() async {
    var pref = await SharedPreferences.getInstance();
    var getName = pref.getString('name');
    nameValue = getName ?? 'No Name Saved';
    setState(() {

    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Preferences 2'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter Your Name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  String name = nameController.text;
                  var pref = await SharedPreferences.getInstance();
                  pref.setString('name', name);
                },
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.orange),
                )),
            SizedBox(height: 20),
            Text(nameValue)
          ],
        ),
      ),
    );
  }
}
