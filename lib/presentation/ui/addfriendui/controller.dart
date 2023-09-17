import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

class AddFriendController extends ReactiveController{

  ReactiveBool isTap=ReactiveBool(false);
  ReactiveString name=ReactiveString('Add Friend');

  void toggle(){
    isTap.value=!isTap.value;
  }


}