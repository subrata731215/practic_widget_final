import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../routes/routes.dart';
import '../../widget/slider_8/slider.dart';

class PriceRange extends StatelessWidget {
  const PriceRange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(context,
          appBarTitle: 'Price Range', trailingRoutes: Routes.schoolUi),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
          height: MediaQuery.of(context).size.height / 3.5,
          width: MediaQuery.of(context).size.width / 1,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.black, width: 2)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price (\$)',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(color: Colors.black12, height: 30, width: 50),
                  SizedBox(width: 30),
                  Text(
                    'To',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 30),
                  Container(color: Colors.black12, height: 30, width: 50),
                ],
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SliderLearn()));
                  // showDialog(
                  //     context: context,
                  //     builder: (context) => AlertDialog(
                  //           title: Text('Subrata'),
                  //         ));
                },
                child: Container(
                  child: Center(
                      child: Text(
                    'Apply',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
