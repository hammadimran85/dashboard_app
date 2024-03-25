import 'package:dashboard_app/constants.dart';
import 'package:dashboard_app/responsive.dart';
import 'package:dashboard_app/views/home/home_widgets/insights.dart';
import 'package:flutter/material.dart';

class ColumnInsights extends StatelessWidget {
  const ColumnInsights({super.key});

  @override
  Widget build(BuildContext context) {
    final iconSize = Responsive.isMobile(context) ? 28.0 : 32.0;
    return Card(
      elevation: 20,
      surfaceTintColor: Theme.of(context).colorScheme.surface,
      color: secondaryColor,
      shadowColor: const Color.fromRGBO(0, 0, 0, 0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Insights(
            percentageColor: Colors.green.shade400,
            icon: Icon(
              Icons.monetization_on_outlined,
              size: iconSize,
            ),
            title: 'Earning',
            amount: '\$198K',
            percentage: '37.8%',
            color: Theme.of(context).primaryColorLight,
          ),
          Insights(
              percentageColor: Colors.green.shade400,
              icon: Icon(
                Icons.trending_up_rounded,
                size: iconSize,
                color: const Color.fromARGB(255, 129, 10, 145),
              ),
              title: 'Profit',
              color: const Color.fromARGB(148, 211, 123, 223),
              amount: '\$2.4k',
              percentage: '2%'),
          Insights(
              percentageColor: Colors.red,
              icon: Icon(
                Icons.price_change_rounded,
                size: iconSize,
                color: const Color.fromARGB(255, 199, 145, 8),
              ),
              title: 'Expenses',
              color: const Color.fromARGB(164, 249, 212, 100),
              amount: '\$89k',
              percentage: '11%'),
        ],
      ),
    );
  }
}
