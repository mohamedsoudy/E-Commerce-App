import 'package:flutter/material.dart';
import 'package:grad_progect/models/product.dart';

class Custom_Favorite extends StatelessWidget {
  final Product favorite;

  const Custom_Favorite(
      {super.key, required this.favorite});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: const Color(0xffF1F4FB),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox(
                width: 90,
                height: 80,
                child: Image.network(favorite.image!, fit: BoxFit.cover))),
          ),
          Text(
            favorite.name!,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xff6342E8),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Positioned(
            bottom: 40,
            child: Text(
              'Geeta Collection',
              style: TextStyle(color: Color(0xffA1A1A1)),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Positioned(
            right: 5,
            top: 25,
            child: Text(
              '\$${favorite.price} USD',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: 5,
            bottom: 10,
            child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_forward)))
        ],
      ),
    );
  }
}