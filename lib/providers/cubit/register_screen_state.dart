part of 'register_screen_cubit.dart';

@immutable
sealed class RegisterScreenState {}

final class RegisterScreenInitial extends RegisterScreenState {}

final class LoadiingState extends RegisterScreenState {}

final class SucessState extends RegisterScreenState {
  
}

final class FailurteState extends RegisterScreenState {}


