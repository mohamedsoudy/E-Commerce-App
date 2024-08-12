//  appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 109, 62, 190),
//         scrolledUnderElevation: 10,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back,
//           color: Colors.white,
//           size: 28,),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       extendBodyBehindAppBar: true,

//       body: SingleChildScrollView(
//         physics: const AlwaysScrollableScrollPhysics(),
//         child: Column(
          
//           children: [
//             Container(
//               height: 450,
//               color: const Color.fromARGB(255, 109, 62, 190),
//               child: Stack(
                
//                 children: [
//                   Positioned(
//                     top: 30,
//                     left: 230,
//                     child: Image.asset('assets/image/Vector.3.png')),
//                     Positioned(
//                       top: 64,
//                       left: 277,
//                     child: Image.asset('assets/image/Vector.1.png')),
//                   Positioned(
//                     top: 24,
//                     left: 222,
//                     child: Image.asset('assets/image/Vector.2.png')),
//                     Positioned(
//                       top: 100,
//                       left: 130,
//                     child: Image.asset('assets/image/Vector.4.png')),
//                     const Positioned(
//                       top: 120,
//                       left: 20,
//                       child: Text('Welcome Back!'
//                       ,style: TextStyle(
//                         fontFamily: 'Lato',
//                         fontSize: 24,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.white
//                       ),)),
//                       const Positioned(
//                       top: 210,
//                       left: 20,
//                       child: Text('Yay! You\'re back! Thanks for shopping with us.\nWe have excited deals and promotions going\n on, grab your pick now! '
//                       ,style: TextStyle(
//                         fontFamily: 'Lato',
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.white
//                       ),)),
//                       const Positioned(
//                       bottom: 40,
//                       left: 20,
//                       child: Text('LOG IN'
//                       ,style: TextStyle(
//                         fontFamily: 'Lato',
//                         fontSize: 24,
//                         fontWeight: FontWeight.w900,
//                         color: Colors.white
//                       ),)),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Colors.white,
//                 child: const Column(
//                   children: [
//                     Text('Email address'
//                       ,style: TextStyle(
//                         fontFamily: 'Lato',
//                         fontSize: 14,
//                         fontWeight: FontWeight.w900,
//                         color: Colors.white
//                       ),)
//                   ],
//                 ),
//               ),
//             )
            
//           ],
          
//         ),
        
//       )
// ===============================================================

// Stack(
              
//               children: [
//                 Positioned(
//                   top: 30,
//                   left: 230,
//                   child: Image.asset('assets/image/Vector.3.png')),
//                   Positioned(
//                     top: 64,
//                     left: 277,
//                   child: Image.asset('assets/image/Vector.1.png')),
//                 Positioned(
//                   top: 24,
//                   left: 222,
//                   child: Image.asset('assets/image/Vector.2.png')),
//                   Positioned(
//                     top: 100,
//                     left: 130,
//                   child: Image.asset('assets/image/Vector.4.png')),
//                   const Positioned(
//                     top: 120,
//                     left: 20,
//                     child: Text('Welcome Back!'
//                     ,style: TextStyle(
//                       fontFamily: 'Lato',
//                       fontSize: 24,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.white
//                     ),)),
//                     const Positioned(
//                     top: 210,
//                     left: 20,
//                     child: Text('Yay! You\'re back! Thanks for shopping with us.\nWe have excited deals and promotions going\n on, grab your pick now! '
//                     ,style: TextStyle(
//                       fontFamily: 'Lato',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.white
//                     ),)),
//                     const Positioned(
//                     bottom: 40,
//                     left: 20,
//                     child: Text('LOG IN'
//                     ,style: TextStyle(
//                       fontFamily: 'Lato',
//                       fontSize: 24,
//                       fontWeight: FontWeight.w900,
//                       color: Colors.white
//                     ),)),
//               ],
//             ),
//              Text('Email address'
//                       ,style: TextStyle(
//                         fontFamily: 'Lato',
//                         fontSize: 14,
//                         fontWeight: FontWeight.w900,
//                         color: Colors.white
//                       ),),
// ===============================================================

//  Container(
//           clipBehavior: Clip.none,
//           color: const Color.fromARGB(255, 109, 62, 190),
//           height: 420,
//           width: double.infinity,
//           child: Stack(
//                   clipBehavior: Clip.none,
//                   children: [
                    
//                     Positioned(
//                       top: 30,
//                       left: 230,
//                       child: Image.asset('assets/image/Vector.3.png')),
//                       Positioned(
//                         top: 64,
//                         left: 277,
//                       child: Image.asset('assets/image/Vector.1.png')),
//                     Positioned(
//                       top: 24,
//                       left: 222,
//                       child: Image.asset('assets/image/Vector.2.png')),
//                       Positioned(
//                         top: 100,
//                         left: 130,
//                       child: Image.asset('assets/image/Vector.4.png')),
//                       Positioned(
                      
//                       child: IconButton(
//           icon: const Icon(Icons.arrow_back,
//           color: Colors.white,
//           size: 28,),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),),
//                       const Positioned(
//                         top: 120,
//                         left: 20,
//                         child: Text('Welcome Back!'
//                         ,style: TextStyle(
//                           fontFamily: 'Lato',
//                           fontSize: 24,
//                           fontWeight: FontWeight.w700,
//                           color: Colors.white
//                         ),)),
//                         const Positioned(
//                         top: 210,
//                         left: 20,
//                         child: Text('Yay! You\'re back! Thanks for shopping with us.\nWe have excited deals and promotions going\n on, grab your pick now! '
//                         ,style: TextStyle(
//                           fontFamily: 'Lato',
//                           fontSize: 14,
//                           fontWeight: FontWeight.w700,
//                           color: Colors.white
//                         ),)),
//                         const Positioned(
//                         bottom: 40,
//                         left: 20,
//                         child: Text('LOG IN'
//                         ,style: TextStyle(
//                           fontFamily: 'Lato',
//                           fontSize: 24,
//                           fontWeight: FontWeight.w900,
//                           color: Colors.white
//                         ),)),
//                         const Positioned(
//                           bottom: -40,
//                           left: 20,
//                           child: Text('Email address'
//                            ,style: TextStyle(
//                          fontFamily: 'Lato',
//                        fontSize: 14,
//                          fontWeight: FontWeight.w900,
//                         color: Colors.black
//                             ),),
//                         )
//                   ],
//                 ),
//         ),
// ===============================================
// class AppRoutes {
//   static const InterfaceScreen = '/';
//   static const WellcomeScreen = 'wellcome_screen';
//   static const LoginScreen = 'login_screen';
//   static const RegisterScreen = 'register_screen';
//   static const HomeScreen = 'home';
// }

// final appRoutes = {
//   AppRoutes.InterfaceScreen: (context) => BlocProvider<>(
//         create: (context) => OnboardingCubit(),
//         lazy: false,
//         child: const OnBoardingView(),
//       ),
//   AppRoutes.SPLASH: (context) => const SplashView(),
//   AppRoutes.SIGNIN: (context) => BlocProvider<SigninCubit>(
//         create: (context) => SigninCubit(),
//         child: const SignInView(),
//       ),
//   AppRoutes.HOME: (context) => BlocProvider<HomeCubit>(
//         create: (context) => HomeCubit(),
//         child: const HomeView(),
//       ),
// };







// BlocBuilder<LoginScreenCubit, LoginScreenState>(
//                       builder: (context, state) => state is LoadingState
//                           ? const Center(child: CircularProgressIndicator())
//                           : ElevatedButton(
//                               onPressed: () {
//                                 context.read<LoginScreenCubit>().signIn();
//                               },


  //  final pro = context.read<HomeScreenCubit>().products;
  //             if (state is CategoryLoaded || pro != null)