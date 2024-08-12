
import 'package:bloc/bloc.dart';
import 'package:grad_progect/models/cart.dart';
// import 'package:grad_progect/models/product.dart';
import 'package:grad_progect/services/repos/cart_repo.dart';
import 'package:meta/meta.dart';

part 'cart_screen_state.dart';

// class CartScreenCubit extends Cubit<CartScreenState> {
//   CartScreenCubit() : super(CartScreenInitial());

//     List<Carts>? productss;
//     // List<CartPivot>? contty;

//  Future<void> getAllCarts() async {
//     try {
//       emit(CartScreenLoading());
//       log('finding cart data...');
//       productss = await CartRepoApi.getAllCart();
//       if (productss == null) {
//         log('No cart data available');
//         emit(CartScreenError('No data available'));
//       } else {
//         log('Cart data found successfully');
//         emit(CartScreenLoaded());
//       }
//     } catch (e) {
//       log('Error fetching cart data: $e');
//       emit(CartScreenError('Error fetching cart data'));
//     }
//   }
// }
// 
class CartScreenCubit extends Cubit<CartScreenState> {
  CartScreenCubit() : super(CartScreenInitial());

  List<Carts>? cartItems;

  Future getAllCarts() async {
    emit(CartScreenLoading());
    cartItems = await CartRepoApi.getAllCart();
    if (cartItems == null) {
      emit(CartScreenError('No products available in the cart!'));
    } else {
      emit(CartScreenLoaded());
    }
  }

  Future addToCart({required int productId, required int quantity}) async {
    emit(CartScreenLoading());
    cartItems = await CartRepoApi.addToCart(productId: productId, quantity: quantity);
    if (cartItems != null) {
      emit(CartScreenLoaded());
    } else {
      emit(CartScreenError('Failed to add item to cart'));
    }
  }
}


 