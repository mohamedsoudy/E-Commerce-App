
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:grad_progect/main.dart';
import 'package:grad_progect/home/home_screen.dart';
import 'package:grad_progect/services/repos/user_request.dart';
part 'register_screen_state.dart';

class RegisterScreenCubit extends Cubit<RegisterScreenState> {
  RegisterScreenCubit() : super(RegisterScreenInitial());

  String? name;
  String? email;
  String? password;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void signUp() async {
    if (formKey.currentState?.validate() != true) return;
    formKey.currentState!.save();

    emit(LoadiingState());

    final response = await AuthRepoApi.register(email!, password!, name!);

    if (response != null) {
      emit(SucessState());
      log('user created');
      navKey.currentState?.pushNamed(HomeScreen.routeName);
    } else {
      emit(FailurteState());
    }
  }
}
