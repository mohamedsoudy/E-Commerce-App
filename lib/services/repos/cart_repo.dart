import 'dart:developer';

import 'package:grad_progect/models/cart.dart';
import 'package:grad_progect/services/api_base_url.dart';
import 'package:grad_progect/services/api_request.dart';

// class CartRepoApi {
//   static Future<List<Carts>?> getAllCart() async {
//     try {
//       final response = await BaseRequest.dynamicRequest(
//         path: ApiConstants.cartUrl,
//       );

//       if (response == null || response['cart'] == null || response['cart']['products'] == null || response['cart']['products'] is! List) {
//         log('No data available');
//         return null;
//       }
//        log('iam in cart now');
//       return (response['cart']['products'] as List).map((e) => Carts.fromJson(e)).toList();
      
//     } 
    
//     catch (error) {
//       log('Error fetching cart: $error');
//       return null;
//     }
//   }
// }
// class CartRepoApi {
//   static Future<List<Carts>?> getAllCart() async {
//     try {
//       final response = await BaseRequest.dynamicRequest(
//         path: ApiConstants.cartUrl,
//       );

//       if (response == null) {
//         log('Response is null');
//         return null;
//       }

//       log('Response received: ${response.toString()}');

//       if (response['cart'] == null || response['cart']['products'] == null || response['cart']['products'] is! List) {
//         log('Invalid response structure: ${response.toString()}');
//         return null;
//       }

//       return (response['cart']['products'] as List).map((e) => Carts.fromJson(e)).toList();
//     } catch (e) {
//       log('Error fetching cart data: $e');
//       return null;
//     }
//   }
//     static Future<List<Carts>?> addToCart({required int productId, required int quantity}) async {
//     try {
//       final response = await BaseRequest.dynamicRequest(
//         path: ApiConstants.cartUrl,
//         requestType: RequestType.POST,
//         body: {
//           'products': [
//             {
//               'productId': productId,
//               'quantity': quantity,
//             }
//           ]
//         },
//       );

//       if (response == null) {
//         log('Response is null');
//         return null;
//       }

//       log('Response received: ${response.toString()}');

//       if (response['cart'] == null || response['cart']['products'] == null || response['cart']['products'] is! List) {
//         log('Invalid response structure: ${response.toString()}');
//         return null;
//       }

//       return (response['cart']['products'] as List).map((e) => Carts.fromJson(e)).toList();
//     } catch (e) {
//       log('Error adding to cart: $e');
//       return null;
//     }
//   }
// }
class CartRepoApi {
  static Future<List<Carts>?> getAllCart() async {
    try {
      final response = await BaseRequest.dynamicRequest(
        path: ApiConstants.cartUrl,
      );

      if (response == null || response['cart'] == null || response['cart']['products'] == null) {
        log('Response or cart products are nullaaaaaaaa');
        return null;
      }

      return (response['cart']['products'] as List).map((e) => Carts.fromJson(e)).toList();
    } catch (e) {
      log('Error fetching cart data: $e');
      return null;
    }
  }

  static Future<List<Carts>?> addToCart({required int productId, required int quantity}) async {
    try {
      final response = await BaseRequest.dynamicRequest(
        path: ApiConstants.cartUrl,
        requestType: RequestType.POST,
        body: {
          'products': [
            {
              'productId': productId,
              'quantity': quantity,
            }
          ]
        },
      );

      if (response == null || response['cart'] == null || response['cart']['products'] == null) {
        log('Response or cart products are nullllllll');
        return null;
      }

      return (response['cart']['products'] as List).map((e) => Carts.fromJson(e)).toList();
    } catch (e) {
      log('Error adding to cart: $e');
      return null;
    }
  }
}

