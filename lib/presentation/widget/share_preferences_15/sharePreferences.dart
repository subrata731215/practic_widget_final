import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencesLearn extends StatefulWidget {
  const SharePreferencesLearn({super.key});

  @override
  State<SharePreferencesLearn> createState() => _SharePreferencesLearnState();
}

class _SharePreferencesLearnState extends State<SharePreferencesLearn> {
  @override
  void initState() {
    // TODO: implement initState
     gettValue();
  }

  gettValue() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('name', 'Subrata Ghosh');
    sp.setStringList('nameList', ['Kala', 'Jaga', 'Mukto', 'Ratan']);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Expanded(
              child: FutureBuilder(
                  future: SharedPreferences.getInstance(),
                  builder: (context, AsyncSnapshot<SharedPreferences> snapshot) =>
                      Column(
                        children: [
                          Text(snapshot.data!.getString('name').toString())
                        ],
                      )),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          gettValue();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
