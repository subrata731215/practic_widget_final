import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../routes/routes.dart';

class SearchBoxAnimationLearn extends StatefulWidget {
  const SearchBoxAnimationLearn({Key? key}) : super(key: key);

  @override
  State<SearchBoxAnimationLearn> createState() =>
      _SearchBoxAnimationLearnState();
}

class _SearchBoxAnimationLearnState extends State<SearchBoxAnimationLearn> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0c0c0c),
      appBar: appbarWidget(context,
          appBarTitle: 'SearchBoxAnimation',
          trailingRoutes: Routes.sharePreference),
      body: AnimatedCrossFade(
        duration: const Duration(seconds: 2),
        alignment: Alignment.center,
        firstCurve: Curves.easeInToLinear,
        secondCurve: Curves.easeInToLinear,
        sizeCurve: Curves.easeIn,
        crossFadeState:
            isTap ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        secondChild: TextField(
          style: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 20),
          decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700),
              prefixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isTap = !isTap;
                  });
                },
                icon: const Icon(Icons.arrow_back, color: Colors.grey),
              ),
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none)),
        ),
        firstChild: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('LazyCount',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xffececec),
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700)),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isTap = !isTap;
                        });
                      },
                      icon: const Icon(Icons.search_outlined,
                          size: 30, color: Colors.white)),
                  const SizedBox(width: 24),
                  const Icon(Icons.filter_alt, size: 30, color: Colors.white),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
