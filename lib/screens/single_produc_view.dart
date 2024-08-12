// import 'dart:developer';
// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_progect/home/cubit/home_screen_cubit.dart';
// import 'package:grad_progect/main.dart';
// import 'package:grad_progect/models/category.dart';
// import 'package:grad_progect/models/product.dart';
// import 'package:grad_progect/providers/cubit/cart_screen_cubit.dart';
// import 'package:grad_progect/widgets/cart.dart';
// import 'package:grad_progect/widgets/custom_country.dart';
// import 'package:group_button/group_button.dart';

// class SingleProductView extends StatelessWidget {
//   final order = Product;

//   const SingleProductView({super.key});
//   static const routeName = 'single_produc_view';

//   @override
//   Widget build(BuildContext context) {
//     // bool? isSlected;
//     final Size screenSize = MediaQuery.of(context).size;
//     final double screenWidth = screenSize.width;
//     final double screenHeight = screenSize.height;

//     Product item = ModalRoute.of(context)!.settings.arguments as Product;

//     final homeCubit = context.read<HomeScreenCubit>();
//     final cartCubit = context.read<CartScreenCubit>();

//     Category productCat = homeCubit.categories!
//         .firstWhere((element) => element.id == item.categoryId);

//     // bool? sizeisslect = homeCubit.chekSize();
//     // final sizeisslect = context.read<HomeScreenCubit>();

//     return Scaffold(
//       backgroundColor: const Color(0xffF1F4FB),
//       // appBar: AppBar(),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 height: screenHeight / 3,
//                 width: screenWidth,
//                 color: const Color(0xffF1F4FB),
//                 child: Stack(
//                   // clipBehavior: Clip.hardEdge,
//                   // alignment: Alignment.center,
//                   children: [
//                     Center(
//                       child: Container(
//                           width: 158,
//                           height: 225,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(59),
//                             color: Colors.white,
//                           ),
//                           child: ClipRRect(
//                               borderRadius: BorderRadius.circular(59),
//                               child: Image.network(
//                                 item.image!,
//                                 fit: BoxFit.cover,
//                               ))),
//                     ),
//                     Positioned(
//                         top: 25,
//                         right: 20,
//                         child: Container(
//                             height: 46,
//                             width: 46,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(35),
//                               color: Colors.white,
//                             ),
//                             child: SizedBox(
//                                 child: IconButton(
//                                     onPressed: () {},
//                                     icon: const Icon(
//                                         Icons.favorite_border_rounded,
//                                         size: 30))))),
//                     Positioned(
//                       top: 22,
//                       left: 10,
//                       child: IconButton(
//                         onPressed: () {},
//                         icon: const SizedBox(
//                             child: Icon(Icons.arrow_back_sharp, size: 35)),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 height: screenHeight * 2 / 3,
//                 // width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Colors.white,
//                 ),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(productCat.name!),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Text(
//                               item.name!,
//                               style: const TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w900,
//                                 fontFamily: 'Lato',
//                                 overflow: TextOverflow.visible,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(width: 8),
//                           Text(
//                             '\$${item.price} USD',
//                             style: const TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           const Icon(Icons.star, color: Colors.amber),
//                           const Icon(Icons.star, color: Colors.amber),
//                           const Icon(Icons.star, color: Colors.amber),
//                           const Icon(Icons.star, color: Colors.amber),
//                           Icon(Icons.star, color: Colors.grey[500]),
//                           const SizedBox(width: 4),
//                           const Text('(4.5)')
//                         ],
//                       ),
//                       const SizedBox(height: 10),
//                       Row(
//                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Expanded(
//                             flex: 2,
//                             child: Container(
//                               child: QuantitySelector(),
//                             ),
//                           ),
//                           const Spacer(),
//                           const Spacer(),
//                           // SizedBox(width: ),
//                           Expanded(
//                               child: Container(
//                             height: 40,
//                             width: 20,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(50),
//                               color: const Color(0xffF1F4FB),
//                             ),
//                             child: IconButton(
//                               onPressed: () {},
//                               icon: const SizedBox(
//                                   child:
//                                       Icon(Icons.ios_share_outlined, size: 20)),
//                             ),
//                           ))
//                         ],
//                       ),
//                       const SizedBox(height: 10),
//                       const Text(
//                         'DESCRIPTION',
//                         style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.w800,
//                             fontFamily: 'Lato'),
//                       ),
//                       const SizedBox(height: 20),
//                       Text(item.description!),
//                       const SizedBox(height: 20),
//                       const Text(
//                         'select size',
//                         style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w800,
//                             fontFamily: 'Lato'),
//                       ),
//                       const SizedBox(height: 5),
//                       Row(
//                         children: [
//                           GroupButton(
//                             buttons: const ['S', 'M', 'L', 'XL', 'XXL'],
//                             onSelected: (val, index, isSlected) {
//                               if (isSlected != true) 'size not slect';
//                               log(val.toString());
//                               log(index.toString());
//                               log(isSlected.toString());
//                             },
//                             options: GroupButtonOptions(
//                               runSpacing: 3,
//                               spacing: 3,
//                               borderRadius: BorderRadius.circular(15),
//                               selectedColor: const Color(0xff6342E8),
//                               unselectedColor: const Color(0xffF1F4FB),
//                               unselectedTextStyle:
//                                   const TextStyle(color: Colors.black),
//                               selectedTextStyle:
//                                   const TextStyle(color: Colors.white),
//                             ),
//                           )
//                         ],
//                       ),
//                       const SizedBox(height: 20),
//                       // BlocBuilder<HomeScreenCubit, HomeScreenState>(
//                       //   builder: (context, state) => state is Loading
//                       //       ? const Center(child: CircularProgressIndicator())
//                       //       :
//                       // BlocProvider(
//                       //   create: (context) => HomeScreenCubit(),
//                       //   child: BlocConsumer<HomeScreenCubit, HomeScreenState>(
//                       //     listener: (context, state) {
//                       //       if (state is SuccessState) {
//                       //         navKey.currentState?.pushNamedAndRemoveUntil(
//                       //           MyCart.routeName,
//                       //           (Route<dynamic> route) => false,
//                       //         );
//                       //         // navKey.currentState?.pushNamed(HomeScreen.routeName);
//                       //       }
//                       //       if (state is FildState) {
//                       //         'size not slected';
//                       //       }
//                       //     },
//                       //     builder: (context, state) =>
//                       BlocProvider(
//                         create: (context) =>
//                             CartScreenCubit()..addToCart(productId, quantity),
//                         child: SizedBox(
//                           width: double.infinity,
//                           child: BlocConsumer<CartScreenCubit, CartScreenState>(
//                             listener: (context, state) {
//                                if (state is CartScreenError) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(state.error)),
//               );
//             }
//                             },
//                             builder: (context, state) {
//                                if (state is CartScreenLoading) {
//               return Center(child: CircularProgressIndicator());
//             } else if (state is CartScreenLoaded) {
//               final products = context.read<CartScreenCubit>().products;
//               navKey.currentState?.pushNamed(
//                                       CartScreen.routeName,
//                                       );
//                               return ElevatedButton(
//                                 onPressed: () {
                                 
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0xff6342E8),
//                                 ),
//                                 child: const Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Icon(
//                                       Icons.card_travel_sharp,
//                                       color: Colors.white,
//                                     ),
//                                     SizedBox(width: 10),
//                                     Text(
//                                       '  ADD TO Cart',
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/home/cubit/home_screen_cubit.dart';
import 'package:grad_progect/main.dart';
import 'package:grad_progect/models/category.dart';
import 'package:grad_progect/models/product.dart';
import 'package:grad_progect/providers/cubit/cart_screen_cubit.dart';
import 'package:grad_progect/widgets/cart.dart';
// import 'package:grad_progect/widgets/custom_cart.dart';
import 'package:grad_progect/widgets/custom_country.dart';
import 'package:group_button/group_button.dart';

// import 'package:flutter/material.dart';

class SingleProductView extends StatelessWidget {
  const SingleProductView({super.key});
  static const routeName = 'single_product_view';

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    Product item = ModalRoute.of(context)!.settings.arguments as Product;

    final homeCubit = context.read<HomeScreenCubit>();
    final cartCubit = context.read<CartScreenCubit>();

    // Category productCat = homeCubit.categories!
    //     .firstWhere((element) => element.id == item.categoryId);

    String? selectedSize;
    int selectedQuantity = 1; // Default quantity

    // Define a future that simulates a delay
    Future<void> delayFuture = Future.delayed(const Duration(seconds: 2));

    return Scaffold(
      backgroundColor: const Color(0xffF1F4FB),
      body: SafeArea(
        child: FutureBuilder<void>(
          future: delayFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              Category productCat = homeCubit.categories!
        .firstWhere((element) => element.id == item.categoryId);
              // Return the main content of the view once the delay is complete
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: screenHeight / 3,
                      width: screenWidth,
                      color: const Color(0xffF1F4FB),
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              width: 158,
                              height: 225,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(59),
                                color: Colors.white,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(59),
                                child: Image.network(
                                  item.image!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 25,
                            right: 20,
                            child: Container(
                              height: 46,
                              width: 46,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.white,
                              ),
                              child: SizedBox(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_border_rounded,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 22,
                            left: 10,
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const SizedBox(
                                child: Icon(Icons.arrow_back_sharp, size: 35),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight * 2 / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(productCat.name!),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    item.name!,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'Lato',
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '\$${item.price} USD',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.amber),
                                const Icon(Icons.star, color: Colors.amber),
                                const Icon(Icons.star, color: Colors.amber),
                                const Icon(Icons.star, color: Colors.amber),
                                Icon(Icons.star, color: Colors.grey[500]),
                                const SizedBox(width: 4),
                                const Text('(4.5)'),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: QuantitySelector(
                                      Quantity: selectedQuantity,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Spacer(),
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color(0xffF1F4FB),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const SizedBox(
                                        child: Icon(Icons.ios_share_outlined, size: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'DESCRIPTION',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Lato',
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(item.description!),
                            const SizedBox(height: 20),
                            const Text(
                              'Select size',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Lato',
                              ),
                            ),
                            const SizedBox(height: 5),
                            GroupButton(
                              buttons: const ['S', 'M', 'L', 'XL', 'XXL'],
                              onSelected: (val, index, isSelected) {
                                if (!isSelected) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Size not selected'),
                                    ),
                                  );
                                }
                                selectedSize = val;
                                log(val.toString());
                                log(index.toString());
                                log(isSelected.toString());
                              },
                              options: GroupButtonOptions(
                                runSpacing: 3,
                                spacing: 3,
                                borderRadius: BorderRadius.circular(15),
                                selectedColor: const Color(0xff6342E8),
                                unselectedColor: const Color(0xffF1F4FB),
                                unselectedTextStyle: const TextStyle(color: Colors.black),
                                selectedTextStyle: const TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(height: 20),
                            BlocProvider(
                              create: (context) => CartScreenCubit(),
                              child: BlocConsumer<CartScreenCubit, CartScreenState>(
                                listener: (context, state) {
                                  if (state is CartScreenError) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(state.error)),
                                    );
                                  }
                                },
                                builder: (context, state) {
                                  
                                    return ElevatedButton(
                                      onPressed: () {
                                         if (selectedSize != null) {
      cartCubit.addToCart(productId: item.id!, quantity: selectedQuantity);
      Navigator.pushNamed(
        context,
        CartScreen.routeName,
        arguments: {
          'id': item.id,
          'selectedQuantity': selectedQuantity,
          'selectedSize': selectedSize,
        },
      );
                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              content: Text('Please select a size'),
                                            ),
                                          );
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xff6342E8),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.card_travel_sharp,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'ADD TO CART',
                                            style: TextStyle(color: Colors.white),
                                           ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              // Handle other possible states if needed
              return const Center(
                child: Text('Something went wrong'),
              );
            }
          },
        ),
      ),
    );
  }
}















// class SingleProductView extends StatelessWidget {
//   const SingleProductView({super.key});
//   static const routeName = 'single_produc_view';

//   Future<void> _delayForLoading() async {
//     await Future.delayed(const Duration(seconds: 6));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffF1F4FB),
//       body: FutureBuilder(
//         future: _delayForLoading(),
//         builder: (context, snapshot) {
//           // Show CircularProgressIndicator while waiting
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }

//           // After 5 seconds, show the actual content
//           final Size screenSize = MediaQuery.of(context).size;
//           final double screenWidth = screenSize.width;
//           final double screenHeight = screenSize.height;

//           Product item = ModalRoute.of(context)!.settings.arguments as Product;

//           final homeCubit = context.read<HomeScreenCubit>();
//           final cartCubit = context.read<CartScreenCubit>();

//           Category productCat = homeCubit.categories!
//               .firstWhere((element) => element.id == item.categoryId);

//           String? selectedSize;
//           int selectedQuantity = 1; // Default quantity

//           return SafeArea(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: screenHeight / 3,
//                     width: screenWidth,
//                     color: const Color(0xffF1F4FB),
//                     child: Stack(
//                       children: [
//                         Center(
//                           child: Container(
//                             width: 158,
//                             height: 225,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(59),
//                               color: Colors.white,
//                             ),
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(59),
//                               child: Image.network(
//                                 item.image!,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           top: 25,
//                           right: 20,
//                           child: Container(
//                             height: 46,
//                             width: 46,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(35),
//                               color: Colors.white,
//                             ),
//                             child: SizedBox(
//                               child: IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(
//                                   Icons.favorite_border_rounded,
//                                   size: 30,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           top: 22,
//                           left: 10,
//                           child: IconButton(
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                             icon: const SizedBox(
//                               child: Icon(Icons.arrow_back_sharp, size: 35),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: screenHeight * 2 / 3,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.white,
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(productCat.name!),
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: Text(
//                                   item.name!,
//                                   style: const TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w900,
//                                     fontFamily: 'Lato',
//                                     overflow: TextOverflow.visible,
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: 8),
//                               Text(
//                                 '\$${item.price} USD',
//                                 style: const TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               const Icon(Icons.star, color: Colors.amber),
//                               const Icon(Icons.star, color: Colors.amber),
//                               const Icon(Icons.star, color: Colors.amber),
//                               const Icon(Icons.star, color: Colors.amber),
//                               Icon(Icons.star, color: Colors.grey[500]),
//                               const SizedBox(width: 4),
//                               const Text('(4.5)'),
//                             ],
//                           ),
//                           const SizedBox(height: 10),
//                           Row(
//                             children: [
//                               Expanded(
//                                 flex: 2,
//                                 child: Container(
//                                   child: QuantitySelector(
//                                     Quantity: selectedQuantity,
//                                   ),
//                                 ),
//                               ),
//                               const Spacer(),
//                               const Spacer(),
//                               Expanded(
//                                 child: Container(
//                                   height: 40,
//                                   width: 20,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(50),
//                                     color: const Color(0xffF1F4FB),
//                                   ),
//                                   child: IconButton(
//                                     onPressed: () {},
//                                     icon: const SizedBox(
//                                       child: Icon(Icons.ios_share_outlined, size: 20),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 10),
//                           const Text(
//                             'DESCRIPTION',
//                             style: TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.w800,
//                               fontFamily: 'Lato',
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           Text(item.description!),
//                           const SizedBox(height: 20),
//                           const Text(
//                             'Select size',
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w800,
//                               fontFamily: 'Lato',
//                             ),
//                           ),
//                           const SizedBox(height: 5),
//                           GroupButton(
//                             buttons: const ['S', 'M', 'L', 'XL', 'XXL'],
//                             onSelected: (val, index, isSelected) {
//                               if (!isSelected) {
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   const SnackBar(
//                                     content: Text('Size not selected'),
//                                   ),
//                                 );
//                               }
//                               selectedSize = val;
//                               log(val.toString());
//                               log(index.toString());
//                               log(isSelected.toString());
//                             },
//                             options: GroupButtonOptions(
//                               runSpacing: 3,
//                               spacing: 3,
//                               borderRadius: BorderRadius.circular(15),
//                               selectedColor: const Color(0xff6342E8),
//                               unselectedColor: const Color(0xffF1F4FB),
//                               unselectedTextStyle: const TextStyle(color: Colors.black),
//                               selectedTextStyle: const TextStyle(color: Colors.white),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           BlocProvider(
//                             create: (context) => CartScreenCubit(),
//                             child: BlocConsumer<CartScreenCubit, CartScreenState>(
//                               listener: (context, state) {
//                                 if (state is CartScreenError) {
//                                   ScaffoldMessenger.of(context).showSnackBar(
//                                     SnackBar(content: Text(state.error)),
//                                   );
//                                 }
//                               },
//                               builder: (context, state) {
//                                 if (state is CartScreenLoading) {
//                                   return const Center(
//                                     child: CircularProgressIndicator(),
//                                   );
//                                 } else if (state is CartScreenLoaded) {
//                                   return ElevatedButton(
//                                     onPressed: () {
//                                       if (selectedSize != null) {
//                                         cartCubit.addToCart(
//                                           productId: item.id!,
//                                           quantity: selectedQuantity,
//                                         );
//                                         navKey.currentState?.pushNamed(
//                                           CartScreen.routeName,
//                                           arguments: [selectedQuantity, selectedSize, item.id],
//                                         );
//                                       } else {
//                                         ScaffoldMessenger.of(context).showSnackBar(
//                                           const SnackBar(
//                                             content: Text('Please select a sizeeeeee'),
//                                           ),
//                                         );
//                                       }
//                                     },
//                                     style: ElevatedButton.styleFrom(
//                                       backgroundColor: const Color(0xff6342E8),
//                                     ),
//                                     child: const Row(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Icon(
//                                           Icons.card_travel_sharp,
//                                           color: Colors.white,
//                                         ),
//                                         SizedBox(width: 10),
//                                         Text(
//                                           'ADD TO CART',
//                                           style: TextStyle(color: Colors.white),
//                                         ),
//                                       ],
//                                     ),
//                                   );
//                                 } else {
//                                   return ElevatedButton(
//                                     onPressed: () {
//                                       if (selectedSize != null) {
//                                         cartCubit.addToCart(
//                                           productId: item.id!,
//                                           quantity: selectedQuantity,
//                                         );
//                                         navKey.currentState?.pushNamed(
//                                           CartScreen.routeName,
//                                           arguments: [selectedQuantity, selectedSize, item.id],
//                                         );
//                                       } else {
//                                         ScaffoldMessenger.of(context).showSnackBar(
//                                           const SnackBar(
//                                             content: Text('Please select a size'),
//                                           ),
//                                         );
//                                       }
//                                     },
//                                     style: ElevatedButton.styleFrom(
//                                       backgroundColor: const Color(0xff6342E8),
//                                     ),
//                                     child: const Row(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Icon(
//                                           Icons.card_travel_sharp,
//                                           color: Colors.white),
//                                         SizedBox(width: 10),
//                                         Text('ADD TO CART', style: TextStyle(color: Colors.white)),
//                                       ],
//                                     ),
//                                   );
//                                 }
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }











// class SingleProductView extends StatelessWidget {
//   const SingleProductView({super.key});
//   static const routeName = 'single_produc_view';

//     Future<void> _delayForLoading() async {
//     await Future.delayed(const Duration(seconds: 5));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     final double screenWidth = screenSize.width;
//     final double screenHeight = screenSize.height;

//     Product item = ModalRoute.of(context)!.settings.arguments as Product;

//     final homeCubit = context.read<HomeScreenCubit>();
//     final cartCubit = context.read<CartScreenCubit>();

//     Category productCat = homeCubit.categories!
//         .firstWhere((element) => element.id == item.categoryId);

//     String? selectedSize;
//     int selectedQuantity = 1; // Default quantity

//     return Scaffold(
//       backgroundColor: const Color(0xffF1F4FB),
//       body: FutureBuilder(
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   height: screenHeight / 3,
//                   width: screenWidth,
//                   color: const Color(0xffF1F4FB),
//                   child: Stack(
//                     children: [
//                       Center(
//                         child: Container(
//                           width: 158,
//                           height: 225,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(59),
//                             color: Colors.white,
//                           ),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(59),
//                             child: Image.network(
//                               item.image!,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         top: 25,
//                         right: 20,
//                         child: Container(
//                           height: 46,
//                           width: 46,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(35),
//                             color: Colors.white,
//                           ),
//                           child: SizedBox(
//                             child: IconButton(
//                               onPressed: () {},
//                               icon: const Icon(
//                                 Icons.favorite_border_rounded,
//                                 size: 30,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         top: 22,
//                         left: 10,
//                         child: IconButton(
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                           icon: const SizedBox(
//                             child: Icon(Icons.arrow_back_sharp, size: 35),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: screenHeight * 2 / 3,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.white,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(productCat.name!),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: Text(
//                                 item.name!,
//                                 style: const TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w900,
//                                   fontFamily: 'Lato',
//                                   overflow: TextOverflow.visible,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 8),
//                             Text(
//                               '\$${item.price} USD',
//                               style: const TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             const Icon(Icons.star, color: Colors.amber),
//                             const Icon(Icons.star, color: Colors.amber),
//                             const Icon(Icons.star, color: Colors.amber),
//                             const Icon(Icons.star, color: Colors.amber),
//                             Icon(Icons.star, color: Colors.grey[500]),
//                             const SizedBox(width: 4),
//                             const Text('(4.5)'),
//                           ],
//                         ),
//                         const SizedBox(height: 10),
//                         Row(
//                           children: [
//                             Expanded(
//                               flex: 2,
//                               child: Container(
//                                 child: QuantitySelector(
//                                   Quantity: selectedQuantity,
//                                 ),
//                               ),
//                             ),
//                             const Spacer(),
//                             const Spacer(),
//                             Expanded(
//                               child: Container(
//                                 height: 40,
//                                 width: 20,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(50),
//                                   color: const Color(0xffF1F4FB),
//                                 ),
//                                 child: IconButton(
//                                   onPressed: () {},
//                                   icon: const SizedBox(
//                                     child: Icon(Icons.ios_share_outlined, size: 20),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           'DESCRIPTION',
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.w800,
//                             fontFamily: 'Lato',
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         Text(item.description!),
//                         const SizedBox(height: 20),
//                         const Text(
//                           'Select size',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w800,
//                             fontFamily: 'Lato',
//                           ),
//                         ),
//                         const SizedBox(height: 5),
//                         GroupButton(
//                           buttons: const ['S', 'M', 'L', 'XL', 'XXL'],
//                           onSelected: (val, index, isSelected) {
//                             if (!isSelected) {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text('Size not selected'),
//                                 ),
//                               );
//                             }
//                             selectedSize = val;
//                             log(val.toString());
//                             log(index.toString());
//                             log(isSelected.toString());
//                           },
//                           options: GroupButtonOptions(
//                             runSpacing: 3,
//                             spacing: 3,
//                             borderRadius: BorderRadius.circular(15),
//                             selectedColor: const Color(0xff6342E8),
//                             unselectedColor: const Color(0xffF1F4FB),
//                             unselectedTextStyle: const TextStyle(color: Colors.black),
//                             selectedTextStyle: const TextStyle(color: Colors.white),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         BlocProvider(
//                           create: (context) => CartScreenCubit(),
//                           child: BlocConsumer<CartScreenCubit, CartScreenState>(
//                             listener: (context, state) {
//                               if (state is CartScreenError) {
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   SnackBar(content: Text(state.error)),
//                                 );
//                               }
//                             },
//                             builder: (context, state) {
//                               if (state is CartScreenLoading) {
//                                 return const Center(
//                                   child: CircularProgressIndicator(),
//                                 );
//                               } else if (state is CartScreenLoaded) {
//                                 return ElevatedButton(
//                                   onPressed: () {
//                                     if (selectedSize != null) {
//                                       cartCubit.addToCart(
//                                         productId: item.id!,
//                                         quantity: selectedQuantity,
//                                       );
//                                       navKey.currentState?.pushNamed(
//                                         CartScreen.routeName,
//                                         arguments: [selectedQuantity,selectedSize,item.id]
//                                       );
//                                     } else {
//                                       ScaffoldMessenger.of(context).showSnackBar(
//                                         const SnackBar(
//                                           content: Text('Please select a sizeeeeee'),
//                                         ),
//                                       );
//                                     }
//                                   },
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: const Color(0xff6342E8),
//                                   ),
//                                   child: const Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: [
//                                       Icon(
//                                         Icons.card_travel_sharp,
//                                         color: Colors.white,
//                                       ),
//                                       SizedBox(width: 10),
//                                       Text(
//                                         'ADD TO CART',
//                                         style: TextStyle(color: Colors.white),
//                                       ),
//                                     ],
//                                   ),
//                                 );
//                               } else {
//                                 return ElevatedButton(
//                                   onPressed: () {
//                                     if (selectedSize != null) {
//                                       cartCubit.addToCart(
//                                         productId: item.id!,
//                                         quantity: selectedQuantity,
//                                       );
//                                       navKey.currentState?.pushNamed(
//                                         CartScreen.routeName,
//                                         arguments: [selectedQuantity,selectedSize,item.id]
//                                       );
//                                     } else {
//                                       ScaffoldMessenger.of(context).showSnackBar(
//                                         const SnackBar(
//                                           content: Text('Please select a size'),
//                                         ),
//                                       );
//                                     }
//                                   },
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: const Color(0xff6342E8),
//                                   ),
//                                   child: const Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: [
//                                       Icon(
//                                         Icons.card_travel_sharp,
//                                         color: Colors.white,
//                                       ),
//                                       SizedBox(width: 10),
//                                       Text(
//                                         'ADD TO CART',
//                                         style: TextStyle(color: Colors.white),
//                                       ),
//                                     ],
//                                   ),
//                                 );
//                               }
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




