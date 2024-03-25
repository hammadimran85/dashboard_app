import 'package:dashboard_app/constants.dart';
import 'package:dashboard_app/responsive.dart';
import 'package:flutter/material.dart';

class SalesPieChartHeader extends StatelessWidget {
  const SalesPieChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Most Sold Items',
          style: TextStyle(
              fontSize: !Responsive.isDesktop(context) ? 12 : 18,
              fontWeight: FontWeight.bold,
              color: primaryColor),
        ),
        Container(
          width: !Responsive.isDesktop(context)
              ? size.width * 0.15
              : size.width * 0.1,
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
    );
  }
}
