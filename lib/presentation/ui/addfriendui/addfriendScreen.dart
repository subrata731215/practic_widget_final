import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:practic/constant.dart';
import 'package:practic/presentation/ui/addfriendui/controller.dart';
import 'package:reactiv/reactiv.dart';
import '../../../routes/routes.dart';

class AddFriendScreen extends ReactiveStateWidget<AddFriendController> {
  @override
  AddFriendController bindController() => AddFriendController();

  const AddFriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: appbarWidget(
        context,
        appBarTitle: 'AddFriendUi',
        trailingRoutes: Routes.audioScreen,
      ),
      body: Center(
        child: DottedBorder(
          color: Colors.black38,
          strokeWidth: 3,
          dashPattern: const [4, 9],
          radius: const Radius.circular(30),
          borderType: BorderType.RRect,
          strokeCap: StrokeCap.round,
          child: Container(
            height: 400,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 7),
                      image: const DecorationImage(
                          image: AssetImage('assets/joydeb.jpg'),
                          fit: BoxFit.fill)),
                ),
                const Column(
                  children: [
                    Text(
                      'Joydeb Singha',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 5),
                    Text(
                      ' Level: Ph.D Scholar',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatarWidget(
                        icon: Icons.military_tech,
                        color: Colors.blue.shade100,
                        iconColor: Colors.blue.shade700,
                        text: '65'),
                    CircleAvatarWidget(
                        color: Colors.green.shade100,
                        iconColor: Colors.green.shade700,
                        icon: Icons.invert_colors_rounded,
                        text: '60%'),
                    CircleAvatarWidget(
                        color: Colors.yellow.shade50,
                        iconColor: Colors.yellow.shade700,
                        icon: Icons.star,
                        text: '254'),
                  ],
                ),
                Observer2(
                    listenable2: controller.name,
                    listenable: controller.isTap,
                    listener: (tap, name) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 18),
                        decoration: BoxDecoration(
                            color: controller.name.value == 'Cancel Request'
                                ? Colors.red
                                : Colors.blue.shade800,
                            borderRadius: BorderRadius.circular(12)),
                        child: controller.isTap.value
                            ? const CircularProgressIndicator()
                            : GestureDetector(
                                onTap: () async {
                                  controller.toggle();

                                  await Future.delayed(
                                      const Duration(seconds: 3));

                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          behavior: SnackBarBehavior.floating,
                                          content: Text(
                                              'Friend Request Sent Successfully')));

                                  controller.isTap.value = false;
                                  controller.name.value = 'Cancel Request';
                                },
                                child: Text(
                                  controller.name.value,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.shade200,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                ),
                              ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    super.key,
    required this.color,
    required this.iconColor,
    required this.icon,
    required this.text,
  });

  final Color color;
  final Color iconColor;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: color,
          child: Icon(
            icon,
            size: 30,
            color: iconColor,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
