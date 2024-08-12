import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
// import 'package:grad_progect/home/home_screen.dart';
// import 'package:grad_progect/main.dart';
// import 'package:grad_progect/main.dart';
// import 'package:grad_progect/screens/home_screen.dart';
// import 'package:grad_progect/main.dart';
// import 'package:grad_progect/screens/home_screen.dart';
import 'package:grad_progect/services/repos/user_request.dart';
// import 'package:grad_progect/utils/varibols.dart';
part 'login_screen_state.dart';

class LoginScreenCubit extends Cubit<LoginScreenState> {
  LoginScreenCubit() : super(LoginScreenInitial());
 

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? email;
  String? password;

  void signIn() async {
    if (formKey.currentState?.validate() != true) return;
    formKey.currentState!.save();

    log(email.toString());
    log(password.toString());

    emit(LoadingState());

    final response = await AuthRepoApi.login(email!, password!);
    log(response.toString());

    if (response != null) {
      emit(SuccessState());
      
    } else {
      emit(FailuteState());
    }
  }
 
}
