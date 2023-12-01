import 'package:flutter/material.dart';
import '../../../createdData/my_appbar_widget.dart';
import '../../../routes/routes.dart';

class SearchBoxAnimationLearn extends StatefulWidget {
  const SearchBoxAnimationLearn({Key? key}) : super(key: key);

  @override
  State<SearchBoxAnimationLearn> createState() =>
      _SearchBoxAnimationLearnState();
}

class _SearchBoxAnimationLearnState extends State<SearchBoxAnimationLearn> {
  bool isTap = false;
  bool positionTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: const Color(0xff0c0c0c),
        appBar: myAppBarWidget(context,
            appBarTitle: 'SearchBoxAnimation',
            trailingRoutes: Routes.sharePreference),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      left: 20,
                      top: 30,
                      child: Container(
                        height: 200,
                        width: 300,
                        color: Colors.teal,
                        child: Stack(
                          children: [
                            AnimatedAlign(
                              duration: Duration(seconds: 2),
                              alignment: positionTap
                                  ? Alignment.topLeft
                                  : Alignment.bottomRight,
                              child: const Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Text(
                                  'Subrata',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  AnimatedPositioned(
                    curve: Curves.easeInToLinear,
                    duration: const Duration(milliseconds: 1000),
                    left: positionTap ? 10 : 240,
                    top: 30,
                    child: const Icon(
                      Icons.calendar_month,
                      size: 90,
                    ),
                  ),
                ],
              ),
            ),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    positionTap = !positionTap;
                  });
                },
                child: Text('Tap')),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(20),
                color: Colors.greenAccent,
                child: AnimatedAlign(

                  duration: Duration(seconds: 2),
                  alignment:
                      positionTap ? Alignment.topRight : Alignment.bottomLeft,
                  child: AnimatedRotation(
                    duration: const Duration(seconds: 2),

                    turns: positionTap?9:5,
                    child: const Icon(
                      Icons.baby_changing_station,
                      size: 50,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

// Container(
// padding: EdgeInsets.all(10),
// margin: EdgeInsets.all(10),
// color: Colors.transparent,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// positionTap
// ? const Text(
// 'LazyCount',
// style: TextStyle(
// color: Colors.white,
// fontSize: 22,
// fontWeight: FontWeight.w700),
// )
//     : Row(
// children: [
// IconButton(
// onPressed: () {
// setState(() {
// positionTap = !positionTap;
// });
// },
// icon: const Icon(
// Icons.arrow_back,
// color: Colors.white,
// )),
// const SizedBox(width: 20),
// const Text(
// 'Search',
// style: TextStyle(
// color: Colors.grey,
// fontSize: 20,
// fontWeight: FontWeight.w700),
// )
// ],
// ),
// if (positionTap)
// Row(
// children: [
// InkWell(
// onTap: () {
// setState(() {
// positionTap = !positionTap;
// });
// },
// child: Icon(Icons.search_outlined,
// color: Colors.white, size: 30),
// ),
// SizedBox(width: 24),
// Icon(Icons.filter_alt, color: Colors.white, size: 30)
// ],
// ),
// ],
// ),
// ),
