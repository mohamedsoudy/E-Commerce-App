import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/home/cubit/home_screen_cubit.dart';
import 'package:grad_progect/screens/custom_sersh.dart';
import 'package:grad_progect/widgets/custom_text_ff.dart';

class Searsh extends StatelessWidget {
  const Searsh({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find Products',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
  controller: searchController,
  decoration: InputDecoration(
    prefixIcon: const Icon(Icons.search),
    hintText: 'Search ',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  onChanged: (query) {
    context.read<HomeScreenCubit>().searchProducts(query);
  },
),
            const SizedBox(
              height: 20,
            ),
            const Text('139 Items found for “Hoodies”'), // This text should be dynamic
            const SizedBox(
              height: 20,
            ),
            BlocConsumer<HomeScreenCubit, HomeScreenState>(
  listener: (context, state) {
    // Handle state changes if necessary
  },
  builder: (context, state) {
    final filteredProds = context.read<HomeScreenCubit>().filteredProducts;

    if (state is Loading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is ProductsLoaded && filteredProds != null) {
      return GridView.builder(
        itemCount: filteredProds.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 300,
          mainAxisSpacing: 20,
          crossAxisSpacing: 14,
        ),
        itemBuilder: (context, index) {
          final product = filteredProds[index];
          return CustomSearsh(
            name: product.name!,
            image: product.image!,
            price: product.price.toString(),
          );
        },
      );
    } else if (state is ProductsCleared) {
      return const Center(child: Text('Error: {state.error}'));
    } else {
      return const Center(child: Text('No products found.'));
    }
  },
),
          ],
        ),
      ),
    );
  }
}

