import 'package:dashboard_app/constants.dart';
import 'package:dashboard_app/responsive.dart';
import 'package:flutter/material.dart';

class Insights extends StatelessWidget {
  const Insights({
    super.key,
    required this.title,
    required this.color,
    required this.amount,
    required this.percentage,
    required this.icon,
    required this.percentageColor,
  });
  final String title;
  final String amount;
  final String percentage;
  final Color color;
  final Icon icon;
  final Color percentageColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width:
          Responsive.isMobile(context) ? size.width * 0.7 : size.width * 0.27,
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              padding: EdgeInsets.all(size.width * 0.01),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: color),
              child: icon),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
              ),
              Row(
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                        fontSize: Responsive.isMobile(context) ? 12 : 20,
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: percentageColor,
                    size: 18,
                  ),
                  Text(
                    percentage,
                    style: TextStyle(
                        color: percentageColor, fontWeight: FontWeight.bold),
                  ),
                  if (size.width >= 300)
                    const Text(
                      'this month',
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
