import 'package:flutter/material.dart';

import '../../main.dart';


class MaterialTheme extends StatelessWidget {
  const MaterialTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: TextTheme(
              headline1: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              headline2: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
              subtitle1: TextStyle(
                fontSize: 20,
              ))),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MaterialTheme'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                   Navigator.pushNamed(context, Routes.sharePreference);
                },
                icon: Icon(Icons.arrow_forward))
          ],
        ),
        body: HomePagee(),
      ),
    );
  }
}

class HomePagee extends StatelessWidget {
   HomePagee({Key? key}) : super(key: key);

DateTime now=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Subrata Ghosh',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'Mukto Ghosh',
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.red),
        ),
        Text(
          'Sourav Ghosh',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'joydeb Ghosh',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
