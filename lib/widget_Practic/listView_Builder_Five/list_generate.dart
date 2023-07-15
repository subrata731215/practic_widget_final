import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ListGenerate());
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
                    padding: EdgeInsets.only(left: 20, right: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext, index) {
                      if (index == 5) {
                        return Center(
                            child: Text(
                          'Bisu, ',
                          style: TextStyle(fontSize: 40),
                        ));
                      }
                      return Center(
                        child: Text(
                          '${index}, '.toString(),
                          style: TextStyle(fontSize: 40),
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
                      itemBuilder: (context,index){
                    return Text('data');
                  }, separatorBuilder: (context,index){
                    return Text('hgmvmghj');
                  }, itemCount: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
