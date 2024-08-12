part of 'cart_screen_cubit.dart';

@immutable
sealed class CartScreenState {}

final class CartScreenInitial extends CartScreenState {}

final class CartScreenLoading extends CartScreenState {}

final class CartScreenLoaded extends CartScreenState {
   
}
class CartScreenError extends CartScreenState {
  final String error;
  CartScreenError(this.error);
}