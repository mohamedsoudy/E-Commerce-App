import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/home/cubit/home_screen_cubit.dart';
import 'package:grad_progect/home/taps/product_list.dart';
import 'package:grad_progect/providers/cubit/cart_screen_cubit.dart';
import 'package:grad_progect/screens/fav.dart';
import 'package:grad_progect/screens/searsh.dart';
import 'package:grad_progect/widgets/cart.dart';
import 'package:grad_progect/widgets/custom_tap_bar.dart';
import 'package:grad_progect/widgets/drwer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = 'home_screen';

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldkey,
      endDrawer: const CustomDrawer(),
      appBar: _buildAppBar(context, scaffoldkey),
      body: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
       final cats = context.read<HomeScreenCubit>().categories;
          if (state is CategoryLoaded || cats != null)  {
            return DefaultTabController(
            //  animationDuration: const Duration(seconds: 10),
              length: cats!.length,
              child: Column(
                children: [
                  CustomTabBarSection(cats: cats),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Filter & Sort',
                          style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.filter_list)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.grid_view)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.fullscreen)),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children:
                          cats.map((e) => const ProductsList()).toList(),
                    ),
                  ),
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
              
      ),
    );
  }
  

  AppBar _buildAppBar(
      BuildContext context, GlobalKey<ScaffoldState> scaffoldkey) {
            final cartCubitGet = context.read<CartScreenCubit>();

    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text(
        'Geeta.',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none_sharp),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_bag_outlined),
          onPressed: () {
                        cartCubitGet.getAllCarts();

Navigator.pushNamed(
        context,
        CartScreen.routeName,
      );
            // cartCubitGet.getAllCarts();
                                        
          },
        ),
        IconButton(
          icon: const Icon(Icons.favorite_border),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Favorite()),
            );
          },
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Searsh(),
            ));
          },
        ),
        IconButton(
          icon: const Icon(Icons.list),
          onPressed: () {
            scaffoldkey.currentState!.openEndDrawer();
          },
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
