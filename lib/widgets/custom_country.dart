import 'package:flutter/material.dart';
// {super.key, required Null Function(dynamic quantity) onQuantityChanged}
class QuantitySelector extends StatefulWidget {
 
  const QuantitySelector({super.key,required int Quantity});

  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffF1F4FB),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: IconButton(
              onPressed: decrementQuantity,
              icon: const Icon(Icons.remove),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ),
          const SizedBox(width: 22),
          Expanded(
            child: Text(
              '$quantity',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: incrementQuantity,
              icon: const Icon(Icons.add),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ),
          
        ],
      ),
    );
  }
}