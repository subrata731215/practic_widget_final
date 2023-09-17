import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:http/http.dart' as http;
import '../../../routes/routes.dart';

class ApiLearn extends StatefulWidget {
  const ApiLearn({Key? key}) : super(key: key);

  @override
  State<ApiLearn> createState() => _ApiLearnState();
}

class _ApiLearnState extends State<ApiLearn> {
  List<dynamic> users = [];

  void fetchUser() async {
    print('fetchUser called');

    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['Result'];
    });
    print('fetchUser completed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'Api', trailingRoutes: Routes.asyncAwait),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final email = user["email"];
            final name = user["name"];

            return ListTile(
              title: Text(email),
              subtitle: Text(name),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchUser();
        },
        child: Icon(Icons.map),
      ),
    );
  }
}
