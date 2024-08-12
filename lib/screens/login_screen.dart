import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/main.dart';
import 'package:grad_progect/providers/cubit/login_screen_cubit.dart';
// import 'package:grad_progect/routes/routes.dart';

import 'package:grad_progect/screens/register_screen.dart';

import '../home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routeName = 'login_screen';
  //  bool _rememberMe ;
  //  bool validator = false;
  //  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final LoginCubit = context.read<LoginScreenCubit>();
    // final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          
          Stack(
            children: [
              Container(
                color: const Color(0xff6342E8),
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              Positioned(
                right: 8,
                top: 40,
                height: 350,
                width: 122,
                // bottom: 30,
                child: Image.asset('assets/image/vectorlogin.png'),
              ),
              Positioned(
                top: 100,
                right: 30,
                
                height: 280,
                width: 190,
                child: Image.asset('assets/image/Vector.4.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 18, top: 30),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 100, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    Text(
                      'Welcome Back!',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Yay! You\'re back! Thanks for shopping with us.\nWe have excited deals and promotions going\n on, grab your pick now! ',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(height: 60),
                    Text(
                      'LOG IN',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
            child: Form(
              key: context.read<LoginScreenCubit>().formKey,
              child: BlocConsumer<LoginScreenCubit, LoginScreenState>(
                listener: (context, state) {
                  if (state is SuccessState) {
                    navKey.currentState?.pushNamedAndRemoveUntil(HomeScreen.routeName,
                      (Route<dynamic> route) => false,);
                    // navKey.currentState?.pushNamed(HomeScreen.routeName);
                  }
                  if (state is FailuteState) {
                    LoginCubit.formKey.currentState?.reset();
                  }
                },
                builder: (context, state) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Email address',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w900),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.error,color: Color(0xff6342E8)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xffD2D2D2)),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: 'Enter your email',
                          hintStyle:
                              const TextStyle(color: Color(0xffAEAEAE)),
                          prefixIcon: const Icon(Icons.email_outlined)),
                      onSaved: (value) => LoginCubit.email = value,
                      validator: (value) {
                        if (value == null ||
                            value.trim().isEmpty == true) {
                          return 'Please enter email';
                        }
                        if (!value.contains('@') == true) {
                          return 'Please enter valid email';
                        }
                        return null;
                      },
                      // suffix: Image.asset('assets/icons/mark.jpg'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Password',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w900)),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffD2D2D2)),
                            borderRadius: BorderRadius.circular(8)),
                        hintText: 'Enter your password',
                        hintStyle: const TextStyle(color: Color(0xffAEAEAE)),
                        prefixIcon: const Icon(Icons.lock_outlined),
                      ),
                      onSaved: (value) => LoginCubit.password = value,
                      validator: (value) {
                        if (value == null || value.isEmpty == true) {
                          return 'Please enter password';
                        }
      
                        if (value.length < 8) {
                          return 'password atleast 8 chars';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Remeber me',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff303030)),
                          ),
                        ]),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: Color(0xff6342E8)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BlocBuilder<LoginScreenCubit, LoginScreenState>(
                      builder: (context, state) => state is LoadingState
                          ? const Center(child: CircularProgressIndicator())
                          : Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  context.read<LoginScreenCubit>().signIn();
                                  // navKey.currentState?.pushNamed(HomeScreen.routeName);
                                },
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 18, horizontal: 120),
                                    backgroundColor: const Color(0xff6342E8)),
                                child: const Text(
                                  'Log In',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Not registered yet? ',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {
                            navKey.currentState?.pushNamed(RegisterScreen.routeName);
                          },
                          child: const Text('Create an Account',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff6342E8))),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
