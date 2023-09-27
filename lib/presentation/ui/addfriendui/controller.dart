import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

class AddFriendController extends ReactiveController {
  ReactiveBool isTap = ReactiveBool(false);
  ReactiveBool snackBarView = ReactiveBool(false);
  ReactiveString buttonText = ReactiveString('Add Friend');

  void toggle() {
    isTap.value = !isTap.value;
  }

  void tap(context) async {
    toggle();
    if (buttonText.value == 'Add Friend') {
      buttonText.value = 'Cancel Request';
    } else {
      buttonText.value = 'Add Friend';
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(snackBarView.value
            ? 'Cancel Friend Request'
            : 'Friend Request Sent Successfully')));

    await Future.delayed(const Duration(seconds: 1), () {
      isTap.value = false;
    });
  }
}
