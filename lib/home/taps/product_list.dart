
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/home/cubit/home_screen_cubit.dart';
import 'package:grad_progect/widgets/custom_product_card.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        final prods = context.read<HomeScreenCubit>().products;

        if (state is ProductsLoaded || prods != null) {
          return GridView.builder(
            padding: const EdgeInsets.all(24),
            itemCount: prods!.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 300,
              mainAxisSpacing: 20,
              crossAxisSpacing: 14,
            ),
            itemBuilder: (context, index) => CustomProductCard(item: prods[index]),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}