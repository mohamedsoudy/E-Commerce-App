
import 'package:flutter/material.dart';
import 'package:grad_progect/providers/cubit/interface_screen_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_progect/providers/cubit/interface_screen_cubit.dart';
// import 'package:grad_progect/providers/cubit/wellcom_screen_cubit.dart';
import 'package:grad_progect/screens/wellcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import '../providers/cubit/interface_screen_cubit.dart';
// import 'package:grad_progect/screens/wellcome_screen.dart';

class InterfaceScreen extends StatelessWidget {
  const InterfaceScreen({super.key});
  static const routeName = 'interface_screen';

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return BlocConsumer<InterfaceScreenCubit, InterfaceScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              // Positioned.fill(
              //     child: Image.asset(
              //   'assets/image/interface.jpeg',
              //   fit: BoxFit.cover,
              // )),
              const Text(
              'Geeta.',
              style: TextStyle(
                  fontSize: 104,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
              Container(
                height: double.maxFinite,
                width: double.maxFinite,
                color: Colors.transparent,
                child: PageView(
                  controller: pageController,
                  children: [
                    buildPage('assets/image/interface.jpeg'),
                    buildPage('assets/image/page3.jpg'),
                    buildPage('assets/image/page2.webp'),
                  ],
                ),
              ),
              const Positioned(
                bottom: 200,
                child: Text(
              'Geeta.',
              style: TextStyle(
                  fontSize: 104,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),),
              Positioned(
                bottom: 100,
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white70
                  ),
                ),
              ),
              // SizedBox(height: 48),
              Positioned(
                  bottom: 130,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(WellcomeScreen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Lato'),
                        backgroundColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 64, vertical: 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                            side: const BorderSide(
                                color: Colors.white, width: 3)),
                        shadowColor: Color(Color.getAlphaFromOpacity(0.0))),
                    child: const Text(
                      'Shop Now',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
              const Spacer(
                flex: 4,
              )
            ],
          ),
        );
      },
    );
  }
}
  Widget buildPage(String imagePath) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          // Positioned(
          //   bottom: 200,
          //   child: Text(
          //     text,
          //     style: const TextStyle(
          //         fontSize: 104,
          //         fontFamily: 'Lato',
          //         fontWeight: FontWeight.w900,
          //         color: Colors.white),
          //   ),
          // ),
        ],
      ),
    );
  }
