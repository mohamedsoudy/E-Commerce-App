// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_progect/home/cubit/home_screen_cubit.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:grad_progect/home/cubit/home_screen_cubit.dart';
// import 'package:grad_progect/main.dart';
// // import 'package:grad_progect/models/category.dart';
// import 'package:grad_progect/models/product.dart';
// import 'package:grad_progect/screens/single_produc_view.dart';
// import 'package:grad_progect/services/repos/categories_repo.dart';

// class CustomProductCard extends StatelessWidget {
//   final Product item;
//   const CustomProductCard({
//     super.key,
//     required this.item,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // need to make deliy screen heer
//     return GestureDetector(
//       onTap: () {
//         // Future.delayed(Duration(seconds: 10));
//         // navKey.currentState
//         //     ?.pushNamed(SingleProductView.routeName, arguments: item);
//       },
//       child: Container(
//         color: Colors.transparent,
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 clipBehavior: Clip.antiAlias,
//                 decoration: BoxDecoration(
//                   color: const Color(0xffF1F4FB),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Stack(
//                   fit: StackFit.expand,
//                   children: [
//                     Image.network(item.image!, fit: BoxFit.cover),
//                     Positioned(
//                       top: 0,
//                       right: 0,
//                       child: IconButton(
//                         onPressed: () {},
//                         icon: const Icon(Icons.favorite_border, size: 35),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               item.name!,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w900,
//                   fontFamily: 'Lato'),
//             ),
//             Text(
//               '\$ ${item.price} USD',
//               style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w900,
//                   color: Colors.grey[400],
//                   fontFamily: 'Lato'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:grad_progect/main.dart';
import 'package:grad_progect/models/product.dart';
import 'package:grad_progect/screens/single_produc_view.dart';

class CustomProductCard extends StatelessWidget {
  final Product item;

  const CustomProductCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    
        
        
        return GestureDetector(
          onTap: () {
             // Navigate immediately
  navKey.currentState?.pushNamed(
    SingleProductView.routeName,
    arguments: item,
  );

  // Delay server request
  // Future.delayed(Duration(seconds: 5)).then((_) {
  //   // Trigger the server request after the delay
  //   context.read<HomeScreenCubit>().getSingleCategory(item.id!);
  // });
      //           //  context.read<HomeScreenCubit>().getSingleCategory(item.id!);
      //               Future.delayed(Duration(seconds: 5)).then((_) {

      //   navKey.currentState?.pushNamed(
      //     SingleProductView.routeName,
      //     arguments: item,
      //   );
      // });
        //         if (state is Loading) {
        //     Center(
        //       child: CircularProgressIndicator()
        //  );
        // }

        //       if (state is ProductsLoaded) {
        //   // If the state is loaded, navigate to the product detail page
        //   navKey.currentState?.pushNamed(
        //     SingleProductView.routeName,
        //     arguments: item,
        //   );
        // } else if (state is ProductsCleared) {
        //   // If there's an error, show a SnackBar with the error message
        //   ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(content: Text('state.message')),
        //   );
        // }
        //     // Trigger the loading state and start fetching product details
        //     // context.read<HomeScreenCubit>().getSingleCategory(item.id!);
          },
          child: Container(
            color: Colors.transparent,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: const Color(0xffF1F4FB),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(item.image!, fit: BoxFit.cover),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border, size: 35),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  item.name!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Lato'),
                ),
                Text(
                  '\$ ${item.price} USD',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey[400],
                      fontFamily: 'Lato'),
                )
              ],
            ),
          ),
        );
      
  }
}

