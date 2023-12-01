import 'package:flutter/material.dart';
import '../../../createdData/my_appbar_widget.dart';
import '../../../routes/routes.dart';

class ListGenerate extends StatelessWidget {
  const ListGenerate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context,
          appBarTitle: 'ListView Generator',
          trailingRoutes: Routes.listSeparate),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(width: 4)),
              child: ListView.builder(
                reverse: false,
                padding: const EdgeInsets.only(left: 20, right: 20),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  if (index == 5) {
                    return const Center(
                        child: Text(
                      'Bisu, ',
                      style: TextStyle(fontSize: 40),
                    ));
                  }
                  return Center(
                    child: Text(
                      '$index, '.toString(),
                      style: const TextStyle(fontSize: 40),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const Text('data');
                  },
                  separatorBuilder: (context, index) {
                    return const Text('Subrata');
                  },
                  itemCount: 4),
            ),
          ),
        ],
      ),
    );
  }
}
