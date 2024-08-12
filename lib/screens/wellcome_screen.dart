import 'package:flutter/material.dart';
import 'package:grad_progect/screens/login_screen.dart';
import 'package:grad_progect/screens/register_screen.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});
  
    static const routeName = 'wellcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
       Positioned.fill(child: Image.asset('assets/image/wellcome.jpeg',fit: BoxFit.cover,)
       ),
       Positioned.fill(child: Container(
        color: Colors.white.withOpacity(0.9),
       )),
       Positioned(
        top: 0,
        left: 0,
        child: Image.asset('assets/image/Vector 5.png')),
        Positioned(
        top: -0,
        left: -0,
        child: Image.asset('assets/image/Vector 6.png')),
        Positioned(
        top: -3,
        left: -3,
        child: Image.asset('assets/image/Vector 7.png')),
         Positioned(
        bottom: 0,
        right: 0,
        child: Image.asset('assets/image/Vector 3.png')),
         Positioned(
        bottom: -2,
        right: 0,
        child: Image.asset('assets/image/Vector 8.png')),
         Positioned(
        bottom: -4,
        right: 0,
        child: Image.asset('assets/image/Vector 9.png')),
        // Positioned(
        // top: 231,
        // left: 200,
        // child: Image.asset('assets/image/Vector 2.png')),
        // Positioned(
        // top: 570,
        // left: -71,
        // child: Image.asset('assets/image/Vector 1.png')),
        Positioned(
              top: 202,
              left: 40,
              child: Image.asset('assets/image/bag.jpg')),
            Positioned(
              top: 218,
              left: 65,
              child: Image.asset('assets/image/bag.jpg')),
            Positioned(
              left: 40,
              top: 230,
              child: Image.asset('assets/image/bag.jpg')),
        Container(
          
          color: Colors.transparent,
                    child: Column(
                     
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
         const SizedBox(height: 100),
         const Text('Geeta.',
                       style: TextStyle(
                fontSize: 44,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w900,
                       ),),
                                  const SizedBox(height: 75),
        
             const Text('Create your fashion\n    in your own way',
                    style: TextStyle(
             fontSize: 24,
             fontFamily: 'Lato',
             fontWeight: FontWeight.w900
                    ),),
                               const SizedBox(height: 20),
        
               const Text('Each men and women has their own style, Geeta\n          help you to create your unique style.',
                     style: TextStyle(
               fontSize: 14,
               fontFamily: 'Lato',
               fontWeight: FontWeight.w700
                     ),),
                     const SizedBox(height: 50,),
             ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                       textStyle: const TextStyle(
                         fontWeight: FontWeight.w900,
                         fontSize: 11,
                         color:  Colors.black,
                         fontFamily: 'Lato'
                    ),
                       backgroundColor: Colors.transparent,
                    padding: const EdgeInsets.symmetric(horizontal: 95, vertical: 18),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24),
                     side: const BorderSide(color: Colors.black, width: 3)),
                     shadowColor: Color(Color.getAlphaFromOpacity(0.0))
                    ),
                    
                     child: const Text(
                   'LOG IN',style: TextStyle(color: Colors.black,
                   fontSize: 14,
                  fontWeight: FontWeight.w900,
                   fontFamily: 'Lato'),
                   ),),
                   const SizedBox(height: 15),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                               Container(
                                 width: 20,
                     height: 2,
                     color: Colors.black,
                               ),
                               const SizedBox(width: 12),
                               const Text('OR',
                                style: TextStyle(
                               fontSize: 14,
                               fontFamily: 'Lato',
                               fontWeight: FontWeight.w700,
                               ),),
                               const SizedBox(width: 12),
                               Container(
                                 width: 20,
                     height: 2,
                     color: Colors.black,
                               ),
                     ],
                    ),
                    const SizedBox(height: 15),
             ElevatedButton(
                     onPressed: () {
                      Navigator.of(context).pushNamed(RegisterScreen.routeName);
                     },
                     style: ElevatedButton.styleFrom(
                       textStyle: const TextStyle(
                         fontWeight: FontWeight.w900,
                         fontSize: 11,
                         color:  Colors.black,
                         fontFamily: 'Lato'
                    ),
                       backgroundColor: Colors.deepPurple,
                     padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 18),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24),
                     ),
                     ),
                     
                      child: const Text(
                   'REGISTER',style: TextStyle(color: Colors.white,
                   fontSize: 12,
                  fontWeight: FontWeight.w900,
                   fontFamily: 'Lato'),
                   ),),
                     ],
                    ),
        ),
        ],
      ),
    );
  }
}