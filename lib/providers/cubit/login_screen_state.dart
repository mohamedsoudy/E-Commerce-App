part of 'login_screen_cubit.dart';

@immutable
sealed class LoginScreenState {}

final class LoginScreenInitial extends LoginScreenState {}

final class LoadingState extends LoginScreenState {}

final class SuccessState extends LoginScreenState {}

final class FailuteState extends LoginScreenState {}


