import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import '../../homepage.controller.dart';

class SchoolUi extends StatelessWidget {
  const SchoolUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'SchoolUi', trailingRoutes: Routes.addBox),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home Page',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1),
                    ),
                    SizedBox(height: 10),
                    Text('Choose Your Course Right Now'),
                  ],
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.green,
                )
              ],
            ),
            const SizedBox(height: 30),
            TextField(
              style: const TextStyle(fontStyle: FontStyle.italic),
              decoration: InputDecoration(
                /// contentPadding not working
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                filled: true,
                fillColor: const Color(0xffeaeaea),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search here',
                hintStyle: const TextStyle(fontStyle: FontStyle.italic),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 30),
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatarWidget(
                      color: Colors.yellow,
                      icon: Icons.radio_sharp,
                      downText: 'Category',
                    ),
                    CircleAvatarWidget(
                        color: Colors.greenAccent,
                        icon: Icons.school_outlined,
                        downText: 'Boutique class'),
                    CircleAvatarWidget(
                        color: Colors.blue,
                        icon: Icons.phone_android,
                        downText: 'Free course'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatarWidget(
                      color: Colors.red,
                      icon: Icons.menu_book_sharp,
                      downText: 'Bookstore',
                    ),
                    CircleAvatarWidget(
                        color: Colors.purple,
                        icon: Icons.class_,
                        downText: ' Live course'),
                    CircleAvatarWidget(
                        color: Colors.green,
                        icon: Icons.leaderboard,
                        downText: 'Free course'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 42),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended course',
                  style:
                      TextStyle(fontWeight: FontWeight.w900, letterSpacing: 1),
                ),
                Text('More'),
              ],
            ),
            const SizedBox(height: 20),
            const Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RecommendedCourseWidget(),
                    RecommendedCourseWidget(),
                    RecommendedCourseWidget(),
                    RecommendedCourseWidget(),
                    RecommendedCourseWidget(),
                    RecommendedCourseWidget(),
                    RecommendedCourseWidget(),
                    RecommendedCourseWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        iconSize: 32,
        elevation: 700,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories_outlined),
            label: 'Subject',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline),
            label: 'Growing',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget(
      {Key? key,
      required this.color,
      required this.icon,
      required this.downText})
      : super(key: key);

  final Color color;
  final IconData icon;
  final String downText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: color,
          child: Icon(
            icon,
            color: Colors.white,
            size: 45,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          downText,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class RecommendedCourseWidget extends StatelessWidget {
  const RecommendedCourseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 140,
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 4),
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          fit: BoxFit.fitHeight,
          alignment: Alignment.center,
          image: AssetImage('assets/cartoon.png'),
        ),
      ),
    );
  }
}
