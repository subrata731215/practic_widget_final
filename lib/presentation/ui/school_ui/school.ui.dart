import 'package:flutter/material.dart';
import 'package:practic/createdData/my_appbar_widget.dart';
import 'package:practic/presentation/ui/school_ui/utills.dart';

import '../../../routes/routes.dart';

class SchoolUi extends StatefulWidget {
  const SchoolUi({Key? key}) : super(key: key);

  @override
  State<SchoolUi> createState() => _SchoolUiState();
}

class _SchoolUiState extends State<SchoolUi> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarWidget(context,
          appBarTitle: 'SchoolUi', trailingRoutes: Routes.stopwatch),
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
                          fontSize: 28,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.grey.shade200,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 3, vertical: 05),
                  child: const Text(
                    'Recommended course',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1,
                        fontSize: 20),
                  ),
                ),
                const Text('More'),
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
        backgroundColor: Colors.white,
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
            // showDialog(context: context, builder: (context) =>
            //     const AlertDialog(
            //       title: Text('Subrata Ghosh'),
            //     ));
          });
        },
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
