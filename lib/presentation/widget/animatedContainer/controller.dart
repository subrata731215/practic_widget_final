
import 'package:flutter/material.dart';
import 'package:reactiv/controllers/reactive_controller.dart';
import 'package:reactiv/reactiv.dart';

class AnimatedContainerController extends ReactiveController{
  ReactiveBool isTap=ReactiveBool(false);

  ReactiveInt height=ReactiveInt(300);
  ReactiveInt width=ReactiveInt(300);
  ReactiveInt borderRadius=ReactiveInt(100);

  Color color=Colors.green;
  void changeTap(){
    isTap.value=!isTap.value;
  }


}


void change(){

}