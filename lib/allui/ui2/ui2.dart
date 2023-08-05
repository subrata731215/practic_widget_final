import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'constants.dart';
import 'controller.dart';

class Ui2 extends ReactiveStateWidget<Ui2Controller> {
  const Ui2({Key? key}) : super(key: key);
  @override
  Ui2Controller bindController()=>Ui2Controller();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151723),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color(0xff151723),
        title: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text('Messages'),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Text(
              'Recent',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: friendList.length,
              itemBuilder: (context, index) => CircleBox(
                  image: friendList[index].assetName,
                  name: friendList[index].name),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xff1F2330)),
              child: ListView.builder(
                itemCount: friendList.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage(friendList[index].assetName)),
                  title: Text(
                    friendList[index].name,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    friendList[index].email,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  trailing: Observer(
                    listenable: controller.time,
                    listener: (time) {
                      return Text(
                        controller.time.value,
                        style: const TextStyle(color: Colors.white),
                      );
                    }
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
