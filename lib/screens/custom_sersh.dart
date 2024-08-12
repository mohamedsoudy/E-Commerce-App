import 'package:flutter/material.dart';
import 'package:grad_progect/main.dart';
import 'package:grad_progect/screens/single_produc_view.dart';

class CustomSearsh extends StatelessWidget {
  final String price;
  final String image;
  final String name;
  const CustomSearsh(
      {super.key,
      required this.price,
      required this.image,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
            navKey.currentState?.pushNamed(
    SingleProductView.routeName,
  );
          },
      child: Column(
        
        children: [
          // const SizedBox(
          //   width: double.infinity,
          // ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                color: const Color(0xffF1F4FB),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              // alignment: Alignment.center,
              children: [
                Positioned.fill(child: Image.network(image)),
                const Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(
                    Icons.favorite_border,
                    size: 35,
                  ),
                ),
                
              ],
            ),
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            ' \$$price',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400]),
          )
        ],
      ),
    );
  }
}
