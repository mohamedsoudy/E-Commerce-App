
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:grad_progect/models/category.dart';
import 'package:grad_progect/models/product.dart';
// import 'package:grad_progect/providers/cubit/login_screen_cubit.dart';
import 'package:grad_progect/services/repos/categories_repo.dart';
import 'package:meta/meta.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(Loading()) {
    getAllCategories().then(
      (value) {
        if (categories?.first.id != null) {
          getSingleCategory(categories!.first.id!);
        }
      },
    );
  }
  List<Product>? filteredProducts;
  List<Category>? categories;
  List<Product>? products;
  // bool? isSlected;

  Future getAllCategories() async {
    categories = await CategoriesRepoApi.getAllCategories();

    emit(CategoryLoaded());
  }

  void getSingleCategory(int id) async {
    products = null;
    emit(ProductsCleared());

    products = await CategoriesRepoApi.getCategoryProducts(id);
    emit(ProductsLoaded());
  }


  //   Future getAllproduct() async {
  //   products = await CategoriesRepoApi.getAllproduct();

  //   // emit(CategoryLoaded());
  // }

   Future loadProducts() async {
    products = await CategoriesRepoApi.getAllproduct();
    filteredProducts = products;
    emit(ProductsLoaded());
  }

  void searchProducts(String query) {
    if (query.isEmpty) {
      filteredProducts = products; // If the query is empty, show all products
    } else {
      filteredProducts = products?.where((product) {
        return product.name!.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
    emit(ProductsLoaded());
  }
    Future getAllProducts() async {
    products = await CategoriesRepoApi.getAllproduct(); // Load all 100 products
    filteredProducts = products;
    emit(ProductsLoaded());
  }
}

  // void getsingleproducts(int id) async {
  //   products = null;
  //   emit(ProductsCleared());

  //   products = await CategoriesRepoApi.gitSingleprod(id);
  //   emit(ProductsLoaded());
  // }

  // void chekSize(bool isSlected){
  // if(isSlected == true){
  //   log('size sleact');
  //   emit(SuccessState(sizee: isSlected));
  //   log('size sleact');

  // }else{
  //   log('size not sleact');
  //   emit(FildState());
    
  // }
 
  
  

