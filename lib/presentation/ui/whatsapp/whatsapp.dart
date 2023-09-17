import 'package:flutter/material.dart';

import '../../../routes/routes.dart';

class WhatsAppUi extends StatelessWidget {
  const WhatsAppUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text('WhatApps'),
            actions: [
              IconButton(
                  onPressed: () {

                  },
                  icon: const Icon(Icons.photo_camera_outlined)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => const [
                  PopupMenuItem(value: '1', child: Text("New group")),
                  PopupMenuItem(value: '2', child: Text('New Broadcast')),
                  PopupMenuItem(value: '3', child: Text('Linked Device')),
                  PopupMenuItem(value: '4', child: Text('Started messages')),
                  PopupMenuItem(value: '5', child: Text('Payments')),
                  PopupMenuItem(value: '6', child: Text('Settings')),
                ],
              )
            ],
            bottom: const TabBar(tabs: [
              Tab(child: Icon(Icons.people_outline)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ]),
          ),
          body: TabBarView(
            children: [
              const Center(child: Text('1')),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/joydeb.jpg'),
                      ),
                      title: Text('Joydeb Singha'),
                      subtitle: Text('okk'),
                      trailing: Text('5:30 pm'),
                    );
                  }),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 4,
                            )),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/joydeb.jpg'),
                        ),
                      ),
                      title: const Text('Joydeb Singha'),
                      subtitle: const Text('10 Miniutes ago'),
                    );
                  }),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/joydeb.jpg'),
                        ),
                        title: Text('Joydeb Singha'),
                        subtitle: Text('Today 6:50 am'),
                        trailing: Icon(Icons.call));
                  }),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, Routes.uiHomePage);
            },
            label: const Text('NextPage', textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
