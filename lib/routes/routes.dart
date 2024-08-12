import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/home/cubit/home_screen_cubit.dart';
import 'package:grad_progect/providers/cubit/cart_screen_cubit.dart';
// import 'package:grad_progect/providers/cubit/interface_screen_cubit.dart';
import 'package:grad_progect/providers/cubit/login_screen_cubit.dart';
import 'package:grad_progect/providers/cubit/register_screen_cubit.dart';
import 'package:grad_progect/providers/cubit/wellcom_screen_cubit.dart';
import 'package:grad_progect/home/home_screen.dart';
// import 'package:grad_progect/screens/home_screen.dart';
import 'package:grad_progect/screens/interface_screen.dart';
import 'package:grad_progect/screens/login_screen.dart';
import 'package:grad_progect/screens/register_screen.dart';
import 'package:grad_progect/screens/single_produc_view.dart';
import 'package:grad_progect/screens/wellcome_screen.dart';
import 'package:grad_progect/widgets/cart.dart';
// import 'package:grad_progect/widgets/custom_country.dart';

final routes = {
 'interface_screen': (context) => const InterfaceScreen(),
  WellcomeScreen.routeName: (context) => BlocProvider<WellcomScreenCubit>(
        create: (context) => WellcomScreenCubit(),
        child: const WellcomeScreen(),
      ),
       LoginScreen.routeName: (context) => BlocProvider<LoginScreenCubit>(
        create: (context) => LoginScreenCubit(),
        child:  const  LoginScreen(),
        
      ),
      RegisterScreen.routeName: (context) => BlocProvider<RegisterScreenCubit>(
        create: (context) => RegisterScreenCubit(),
        child: const RegisterScreen(),
        
      ),
      HomeScreen.routeName: (context) => BlocProvider<HomeScreenCubit>(
        create: (context) => HomeScreenCubit(),
        child: const HomeScreen(),
        
        
      ),
      SingleProductView.routeName: (context) => BlocProvider<HomeScreenCubit>(
        create: (context) => HomeScreenCubit(),
        child:  const SingleProductView(),
        
        
      ),
      CartScreen.routeName: (context) => BlocProvider<CartScreenCubit>(
        create: (context) => CartScreenCubit(),
        child:  const CartScreen(),
        
        
      ),
      // 'single_produc_view': (context) => const SingleProductView(),
      // 'cart': (context) =>  MyCart(),
           

      
};
