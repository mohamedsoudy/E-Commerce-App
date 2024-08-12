part of 'home_screen_cubit.dart';

@immutable
sealed class HomeScreenState {}

final class Loading extends HomeScreenState {}

final class CategoryLoaded extends HomeScreenState {}

final class ProductsLoaded extends HomeScreenState {}

final class ProductsCleared extends HomeScreenState {
  
}

