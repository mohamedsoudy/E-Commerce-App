
import 'package:flutter/material.dart';
import 'package:grad_progect/models/cart.dart';
// import 'package:grad_progect/models/product.dart';
import 'package:grad_progect/widgets/custom_country.dart';
// import 'package:grad_progect/widgets/custom_country.dart';

// class CustomMyCart extends StatelessWidget {
//     final Carts product;

//   const CustomMyCart({super.key, required this.product});
//   //  Product item = ModalRoute.of(context)!.settings.arguments as Product;
//   @override
//   Widget build(BuildContext context) {
//     // Product item = ModalRoute.of(context)!.settings.arguments as Product;
//     // final countkey = context.read<CartScreenCubit>();
//     // QuantitySelector countof = ModalRoute.of(context)!.settings.arguments as QuantitySelector;
//    int Quantity = ModalRoute.of(context)!.settings.arguments as int;
//     return Container(
//       height: 150,
//       color: const Color(0xffF1F4FB),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(product.image!),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 product.name!,
//                 style: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xff6342E8),
//                 ),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               const Text(
//                 'Geeta Collection',
//                 style: TextStyle(color: Color(0xffA1A1A1)),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               Text(
//                 '\$ ${product.price} USD',
//                 style: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
//                 QuantitySelector(Quantity: Quantity),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
class CustomMyCart extends StatelessWidget {
  final Carts product;

  const CustomMyCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: const Color(0xffF1F4FB),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(product.image!),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                product.name!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6342E8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Geeta Collection',
                style: TextStyle(color: Color(0xffA1A1A1)),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                '\$${product.price} USD',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
                QuantitySelector(Quantity: product.pivot?.quantity ?? 1), // Accessing quantity from pivot
              ],
            ),
          )
        ],
      ),
    );
  }
}


