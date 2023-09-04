import 'package:flutter/material.dart';
import '../../../routes/routes.dart';

class MoneyTransfer extends StatelessWidget {
  const MoneyTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xffDFEDFD),
          iconTheme: IconThemeData(color: Colors.blue, size: 32),
          titleTextStyle: TextStyle(
            color: Colors.blue,
            fontSize: 25,
          ),
        ),
      ),
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xffDFEDFD),
          appBar: AppBar(
            leading: const Icon(
              Icons.menu,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Easy ',
                    style: Theme.of(context).appBarTheme.titleTextStyle ??
                        const TextStyle(fontWeight: FontWeight.w800)),
                const Text(
                  'Transfer',
                ),
              ],
            ),
            actions: [
              Row(
                children: [
                  const Icon(
                    Icons.notifications_none,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.photoshop);
                    },
                    child: const Icon(
                      Icons.arrow_forward,
                    ),
                  )
                ],
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 30, left: 30, right: 30, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Good Afternoon,',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Subrata Ghosh.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Search',
                            hintStyle:
                                const TextStyle(fontSize: 20, letterSpacing: 1),
                            suffixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleButton(
                          icon: Icons.attach_money,
                          text: 'Add Money',
                        ),
                        CircleButton(
                          icon: Icons.money_off,
                          text: 'Withdraw',
                        ),
                        CircleButton(
                          icon: Icons.save_outlined,
                          text: 'Save',
                        ),
                        CircleButton(
                          icon: Icons.pie_chart,
                          text: 'invest',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Column(
                      children: [
                        DownButton(
                            title: 'Online Payments',
                            subtitle: 'Payments',
                            icon: Icons.credit_card),
                        DownButton(
                            title: 'Education',
                            subtitle: 'Pay Education Fee',
                            icon: Icons.cast_for_education_outlined),
                        DownButton(
                            title: 'Discounts',
                            subtitle: 'Avail exciting Discounts',
                            icon: Icons.percent),
                        DownButton(
                            title: 'Savings',
                            subtitle: 'Earn profit everyday',
                            icon: Icons.cruelty_free_rounded),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Color(0xffe6e6e6),
            ),
          ],
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.blue,
              size: 30,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DownButton extends StatelessWidget {
  const DownButton(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.icon})
      : super(key: key);

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 7),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                blurRadius: 12,
                color: Color(0xffe6e6e6),
              ),
            ]),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w800,
                fontSize: 20,
                letterSpacing: 1),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.green.shade500,
              fontSize: 18,
            ),
          ),
          trailing: Icon(
            icon,
            color: Colors.blue,
            size: 35,
          ),
        ),
      ),
    );
  }
}
