import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/home/cubit/home_screen_cubit.dart';
import 'package:grad_progect/providers/cubit/cart_screen_cubit.dart';
import 'package:grad_progect/providers/cubit/interface_screen_cubit.dart';
import 'package:grad_progect/routes/routes.dart';
import 'package:grad_progect/screens/interface_screen.dart';
import 'package:oktoast/oktoast.dart';

GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
// GlobalKey<ScaffoldMessengerState> scafoldKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomeScreenCubit>(create: (context) => HomeScreenCubit()),
          BlocProvider<InterfaceScreenCubit>(create: (context) => InterfaceScreenCubit()),
          BlocProvider<CartScreenCubit>(create: (context) =>  CartScreenCubit()),
        ],
      child: MaterialApp(
        title: 'Gradution Project',
        debugShowCheckedModeBanner: false,
        navigatorKey: navKey,
        // scaffoldMessengerKey: scafoldKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: InterfaceScreen.routeName,
        routes: routes,
      ),
    ));
  }
}

