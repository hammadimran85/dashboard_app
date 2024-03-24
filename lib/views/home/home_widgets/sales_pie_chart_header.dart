import 'package:dashboard_app/constants.dart';
import 'package:flutter/material.dart';

class SalesPieChartHeader extends StatelessWidget {
  const SalesPieChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Most Sold Items',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          Container(
            width: 150,
            height: 40,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade100),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Weekly',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.expand_more)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
