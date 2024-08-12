import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/models/cart.dart';
import 'package:grad_progect/models/product.dart';
// import 'package:grad_progect/models/cart.dart';
// import 'package:grad_progect/models/product.dart';
// import 'package:grad_progect/models/product.dart';
import 'package:grad_progect/providers/cubit/cart_screen_cubit.dart';
import 'package:grad_progect/screens/debit_card.dart';
import 'package:grad_progect/widgets/custom_cart.dart';

// class CartScreen extends StatelessWidget {
//   const CartScreen({super.key});
//   static const routeName = 'cart';

//   @override
//   Widget build(BuildContext context) {
//         // Product item = ModalRoute.of(context)!.settings.arguments as Product;
//                 // Product order = ModalRoute.of(context)!.settings.arguments as Product; FOR ADD ITEM IN CART


//     return BlocProvider(
//       create: (context) => CartScreenCubit()..getAllCarts(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'My Cart',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           centerTitle: true,
//         ),
//         body: BlocConsumer<CartScreenCubit, CartScreenState>(
//           listener: (context, state) {
//             if (state is CartScreenError) {
//               ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text(state.error)));
//             }
//           },
//           builder: (context, state) {
//             if (state is CartScreenLoading) {
//               return const Center(child: CircularProgressIndicator());
//             } else if (state is CartScreenLoaded) {
//               final prodss = context.read<CartScreenCubit>().products;
//               if (prodss != null && prodss.isEmpty) {
//                 return SingleChildScrollView(
//                   padding: const EdgeInsets.all(12),
//                   child: Column(
//                     children: [
//                       Container(
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: GridView.builder(
//                           itemCount: prodss.length,
//                           shrinkWrap: true,
//                           physics: const BouncingScrollPhysics(),
//                           gridDelegate:
//                               const SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 1,
//                             mainAxisExtent: 150,
//                             mainAxisSpacing: 20,
//                           ),
//                           itemBuilder: (context, index) =>
//                               CustomMyCart(product: prodss[index]),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               } else {
//                 return const Center(
//                   child: Text('No products available in the cart'),
//                 );
//               }
//             } else {
//               return const Center(child: CircularProgressIndicator());
//             }
//           },
//         ),
//       ),
//     );
//   }
// }



// class CartScreen extends StatelessWidget {
//   const CartScreen({super.key});
//   static const routeName = 'cart';

//   @override
//   Widget build(BuildContext context) {
//       Product item = ModalRoute.of(context)!.settings.arguments as Product;
//     // int Quantity = ModalRoute.of(context)!.settings.arguments as int;
//     String sizee = ModalRoute.of(context)!.settings.arguments as String;
//         final cartCubit = context.read<CartScreenCubit>().gititmes;
//         final cartCubitt = context.read<CartScreenCubit>();

//     Carts productCat = cartCubitt.addcartItems!
//         .firstWhere((element) => element.id == item.id);

//     return BlocProvider(
//       create: (context) => CartScreenCubit()..getAllCarts(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'My Cart',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           centerTitle: true,
//         ),
//         body: BlocConsumer<CartScreenCubit, CartScreenState>(
//           listener: (context, state) {
//             if (state is CartScreenError) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(state.error)),
//               );
//             }
//           },
//           builder: (context, state) {
//             if (state is CartScreenLoading) {
//               return Center(child: CircularProgressIndicator());
//             } else if (state is CartScreenLoaded) {
//               final products = context.read<CartScreenCubit>().gititmes;
//               if (products == null || products.isEmpty) {
//                 return Center(child: Text('No products available in the cart!'));
//               } else {
//                 return SingleChildScrollView(
//                   padding: const EdgeInsets.all(12),
//                   child: Column(
//                     children: [
//                       Container(
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: GridView.builder(
//                           itemCount: products.length,
//                           shrinkWrap: true,
//                           physics: const BouncingScrollPhysics(),
//                           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 1,
//                             mainAxisExtent: 150,
//                             mainAxisSpacing: 20,
//                           ),
//                           itemBuilder: (context, index) => CustomMyCart(product: products[index]),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               }
//             } else {
//               return Text('No products available in the cart!');
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class CartScreen extends StatelessWidget {
//   const CartScreen({super.key});
//   static const routeName = 'cart';

//   @override
//   Widget build(BuildContext context) {
    
//     // Retrieve the arguments passed to this screen
//     // Product item = ModalRoute.of(context)!.settings.arguments as Product;
//     // int selectedQuantity = ModalRoute.of(context)!.settings.arguments as int;
//     //     String selectedSize = ModalRoute.of(context)!.settings.arguments as String;
//     // Product item = ModalRoute.of(context)!.settings.arguments as Product;

//     // final cartCubit = context.read<CartScreenCubit>();
//     // final cartCubitt = context.read<CartScreenCubit>();

//     // Carts productCat = cartCubitt.gititmes!
//     //     .firstWhere((element) => element.id == products);

//     // Define a future that simulates a delay
//     Future<Carts> delayFuture = Future.delayed(const Duration(seconds: 5));

//     return BlocProvider(
//       create: (context) => CartScreenCubit(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'My Cart',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           centerTitle: true,
//         ),
//         body: FutureBuilder<Carts>(
//           future: delayFuture,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               // Display CircularProgressIndicator while waiting
//               return Center(child: CircularProgressIndicator());
//             } else if (snapshot.connectionState == ConnectionState.done) {
//     //           int selectedQuantity = ModalRoute.of(context)!.settings.arguments as int;
//     //     String selectedSize = ModalRoute.of(context)!.settings.arguments as String;
//     // Product item = ModalRoute.of(context)!.settings.arguments as Product;
//         //         Carts productCat = cartCubitt.addcartItems!
//         // .firstWhere((element) => element.id == item.categoryId);
//               // Return the main content after the delay
//               return BlocConsumer<CartScreenCubit, CartScreenState>(
//                 listener: (context, state) {
//                   if (state is CartScreenError) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text(state.error)),
//                     );
//                   }
//                 },
//                 builder: (context, state) {
//                   if (state is CartScreenLoading) {
//                     return Center(child: CircularProgressIndicator());
//                   } else if (state is CartScreenLoaded) {
//                     final products = context.read<CartScreenCubit>().gititmes;
//                     if (products == null || products.isEmpty) {
//                       return Center(child: Text('No products available in the cart!'));
//                     } else {
//                       return SingleChildScrollView(
//                         padding: const EdgeInsets.all(12),
//                         child: Column(
//                           children: [
//                             Container(
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: GridView.builder(
//                                 itemCount: products.length,
//                                 shrinkWrap: true,
//                                 physics: const BouncingScrollPhysics(),
//                                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                                   crossAxisCount: 1,
//                                   mainAxisExtent: 150,
//                                   mainAxisSpacing: 20,
//                                 ),
//                                 itemBuilder: (context, index) => CustomMyCart(product: products[index]),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }
//                   } else {
//                     return Center(child: Text('No products available in the cart!'));
//                   }
//                 },
//               );
//             } else {
//               // Handle other possible states if needed
//               return Center(child: Text('Something went wrong'));
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
// 
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const routeName = 'cart';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
       
    // if (args == null || args['id'] == null || args['selectedQuantity'] == null || args['selectedSize'] == null) {
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: const Text('My Cart'),
    //       centerTitle: true,
    //     ),
    //     body: const Center(
    //       child: Text('Missing or invalid product data!'),
    //     ),
    //   );
    // }

    // final int id = args['id'] as int;
    // final int selectedQuantity = args['selectedQuantity'] as int;
    // final String selectedSize = args['selectedSize'] as String;

    return BlocProvider(
      create: (context) => CartScreenCubit()..getAllCarts(),
      child: Scaffold(
        floatingActionButton: SizedBox(
        width: double.infinity,
        height: 45,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: FloatingActionButton(
            backgroundColor: const Color(0xff6342E8),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Checkout',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              IconButton(onPressed: () {}, icon: const Icon(Icons.clear))
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Delivery',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Row(
                                    children: [
                                      Text('Select Method  '),
                                      Icon(Icons.arrow_forward_ios_rounded),
                                    ],
                                  )),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Pament',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(width: 162),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => const DebitCard()));
                                  },
                                  child: SizedBox(
                                    height: 16,
                                    width: 21,
                                    child: Image.asset('assets/image/card.png'))),
                                  const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Promo Code',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Row(
                                    children: [
                                      Text('Pick discount     '),
                                      Icon(Icons.arrow_forward_ios_rounded),
                                    ],
                                  )),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Total Cost',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Row(
                                    children: [
                                      Text('135.96     '),
                                      Icon(Icons.arrow_forward_ios_rounded),
                                    ],
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                              'By placing an order you agree to our \n Terms And Conditions.',
                              style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,fontFamily: 'Lato')),
                              ElevatedButton(
                              style:   ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 50),
                                    backgroundColor: const Color(0xff6342E8)),
                                onPressed: (){}, child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    // color: Colors.white,
                                    child: Image.asset('assets/image/Cart icon2.png')),
                                    const SizedBox(width: 5,),
                                  const Text('Place Order',style: TextStyle(color: Colors.white),),
                                ],
                              ))
                        ],
                      ),
                    );
                  });
            },
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               SizedBox(
                 height: 18,
                 width: 18,
                 child: Image.asset('assets/image/Group 6892.png'),
               ),
               const SizedBox(width: 5,),
                const Text(
                  'Go to Checkout',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          title: const Text('My Cart'),
          centerTitle: true,
        ),
        body: BlocConsumer<CartScreenCubit, CartScreenState>(
          listener: (context, state) {
            if (state is CartScreenError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          builder: (context, state) {
            if (state is CartScreenLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CartScreenLoaded) {
              final products = context.read<CartScreenCubit>().cartItems;
              if (products == null || products.isEmpty) {
                return const Center(child: Text('No products available in the cart!'));
              } else {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: GridView.builder(
                          itemCount: products.length,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisExtent: 150,
                            mainAxisSpacing: 20,
                          ),
                          itemBuilder: (context, index) => CustomMyCart(product: products[index]),
                        ),
                      ),
                    ],
                  ),
                );
              }
            } else {
              return const Center(child: Text('Something went wrong'));
            }
          },
        ),
      ),
    );
  }
}




