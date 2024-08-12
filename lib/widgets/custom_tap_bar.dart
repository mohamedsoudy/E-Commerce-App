import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_progect/models/category.dart';
import 'package:grad_progect/home/cubit/home_screen_cubit.dart';

class CustomTabBarSection extends StatelessWidget {
  const CustomTabBarSection({
    super.key,
    required this.cats,
  });

  final List<Category> cats;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TabBar(
        tabs: cats
            .map((e) => Text(
                  e.name!,
                  style: const TextStyle(fontSize: 14),
                ))
            .toList(),
        isScrollable: true,
        labelPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
        unselectedLabelColor: const Color(0xffA1A1A1),
        labelColor: const Color(0xff6342E8),
        labelStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
        indicator: UnderlineTabIndicator(
          borderSide: const BorderSide(width: 3, color: Color(0xff6342E8)),
          borderRadius: BorderRadius.circular(1),
          insets: const EdgeInsets.only(right: 50),
        ),
        tabAlignment: TabAlignment.start,
        dividerHeight: 1,
        dividerColor: const Color(0xffF1F4FB),
        onTap: (value) => context.read<HomeScreenCubit>().getSingleCategory(cats[value].id!),
        
      ),
      
    );
    
  }
}