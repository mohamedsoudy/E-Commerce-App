import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/home/home_screen.dart';
import 'package:grad_progect/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:grad_progect/routes/routes.dart';
part 'interface_screen_state.dart';

class InterfaceScreenCubit extends Cubit<InterfaceScreenState> {
  InterfaceScreenCubit() : super(InterfaceScreenInitial()) {
    log('=================================');
    checkAuth();
  }

  void checkAuth() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final tokken = prefs.getString('tokken');
    log('$tokken');

    if (tokken != null) {
      log('tokken found and not =null');
      navKey.currentState?.pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
    }else{
      log('=================================+');
    }
  }
}