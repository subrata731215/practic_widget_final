import 'package:flutter/material.dart';

void main() {
  runApp(const ListGenerate());
}

class ListGenerate extends StatelessWidget {
  const ListGenerate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      border: Border.all(width: 4)),
                  child: ListView.builder(
                    reverse: true,
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
                  color: Colors.blue,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return const Text('data');
                      },
                      separatorBuilder: (context, index) {
                        return const Text('hgmvmghj');
                      },
                      itemCount: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
