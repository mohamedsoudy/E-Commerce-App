import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/main.dart';
import 'package:grad_progect/providers/cubit/login_screen_cubit.dart';
// import 'package:grad_progect/providers/cubit/Register_screen_cubit.dart';
// import 'package:grad_progect/providers/cubit/register_screen_cubit.dart';
import 'package:grad_progect/providers/cubit/register_screen_cubit.dart';
import 'package:grad_progect/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
    static const routeName = 'Register_screen';

  @override
  Widget build(BuildContext context) {
        final RegisterCubit = context.read<RegisterScreenCubit>();

    return  Scaffold(
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
                      'Get’s started with Geeta.',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Already have an account? Log in',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(height: 60),
                    Text(
                      'Register',
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
              key: context.read<RegisterScreenCubit>().formKey,
              child: BlocConsumer<RegisterScreenCubit, RegisterScreenState>(
                listener: (context, state) {
                  if (state is SuccessState) {
                    navKey.currentState?.pushNamed(LoginScreen.routeName);
                  }
                  if (state is FailurteState) {
                    RegisterCubit.formKey.currentState?.reset();
                  }
                },
                builder: (context, state) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Your Name',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w900,fontFamily: 'Lato'),
                    ),
                     TextFormField(
                      decoration: InputDecoration(
                          
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xffD2D2D2)),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: 'Enter your name',
                          hintStyle:
                              const TextStyle(color: Color(0xffAEAEAE)),
                          prefixIcon: const Icon(Icons.person)),
                      onSaved: (value) => RegisterCubit.name=value,
                      validator: (value) {
                        if (value == null ||
                            value.trim().isEmpty == true) {
                          return 'Please enter name';
                        }
                         if (value.length < 5) {
                          return 'Name must be atleast 5 chars';
                        }
                        return null;
                        
                        
                      },
                      // suffix: Image.asset('assets/icons/mark.jpg'),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      'Email address',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w900),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xffD2D2D2)),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: 'Enter your email',
                          hintStyle:
                              const TextStyle(color: Color(0xffAEAEAE)),
                          prefixIcon: const Icon(Icons.email_outlined)),
                      onSaved: (value) => RegisterCubit.email = value,
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
                      height: 20,
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
                      onSaved: (value) => RegisterCubit.password = value,
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
                    
                    
                    BlocConsumer<RegisterScreenCubit, RegisterScreenState>(
                                      listener: (context, state) {
                                        if (state is SuccessState) {
                                         navKey.currentState?.pushNamedAndRemoveUntil(LoginScreen.routeName,
                      (Route<dynamic> route) => false,);
                                        }
                                        if (state is FailuteState) {
                                          RegisterCubit.formKey.currentState?.reset();
                                        }
                                      },
                                      builder: (context, state) => state is LoadingState
                                          ? const Center(child: CircularProgressIndicator())
                                          : Center(
                                            child: ElevatedButton(
                                                                            onPressed: RegisterCubit.signUp,
                                                                            style: ElevatedButton.styleFrom(
                                                                                padding: const EdgeInsets.symmetric(
                                                                                    vertical: 18, horizontal: 120),
                                                                                backgroundColor: const Color(0xff6342E8)),
                                                                            child: const Text(
                                                                              'Register',
                                                                              style: TextStyle(
                                                                                fontFamily: 'Lato',
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
                    
                    
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('By  joining I agree to receive emails from Geeta.',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),),])
                      ],
                    )
              
                ),
              ),
            ),
          
        ]),
      ),
    );
  }
}