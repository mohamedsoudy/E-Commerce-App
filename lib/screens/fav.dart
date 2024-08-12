import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/home/cubit/home_screen_cubit.dart';
import 'package:grad_progect/models/product.dart';
import 'package:grad_progect/screens/custom_fav.dart';
import 'package:grad_progect/screens/debit_card.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});
  
  @override
  Widget build(BuildContext context) {
    final productt = context.read<HomeScreenCubit>().products;
        //  Future<void> delayFuture = Future.delayed(const Duration(seconds: 2));


    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
         style:  ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 30),
                                      backgroundColor: const Color(0xff6342E8)),
          onPressed: (){}, child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Image.asset('assets/image/Cart icon.png'),
            ),
            const SizedBox(width: 5,),
            const Text('ADD all TO Cart',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w900,color: Colors.white),)
          ],
        )),
      ),
      appBar: AppBar(
        title: const Text(
          'Favorite',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Column(
              children: [
                GridView.builder(
                  itemCount: productt!.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 150,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return Custom_Favorite(
                     favorite: productt[index],
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}