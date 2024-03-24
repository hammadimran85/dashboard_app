import 'package:dashboard_app/constants.dart';
import 'package:dashboard_app/views/home/home_widgets/header.dart';
import 'package:dashboard_app/views/home/home_widgets/insights.dart';
import 'package:dashboard_app/views/home/home_widgets/sales_bar_chart.dart';
import 'package:dashboard_app/views/home/home_widgets/sales_chart_header.dart';
import 'package:dashboard_app/views/home/home_widgets/sales_line_chart.dart';
import 'package:dashboard_app/views/home/home_widgets/sales_pie_chart.dart';
import 'package:dashboard_app/views/home/home_widgets/sales_pie_chart_header.dart';
import 'package:dashboard_app/views/home/home_widgets/thick_bar_chart.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 20,
              surfaceTintColor: Theme.of(context).colorScheme.surface,
              color: secondaryColor,
              shadowColor: const Color.fromRGBO(0, 0, 0, 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Insights(
                    percentageColor: Colors.green.shade400,
                    icon: const Icon(
                      Icons.monetization_on_outlined,
                      size: 32,
                    ),
                    title: 'Earning',
                    amount: '\$198K',
                    percentage: '37.8%',
                    color: Theme.of(context).primaryColorLight,
                  ),
                  Insights(
                      percentageColor: Colors.green.shade400,
                      icon: const Icon(
                        Icons.trending_up_rounded,
                        size: 32,
                        color: Color.fromARGB(255, 129, 10, 145),
                      ),
                      title: 'Profit',
                      color: const Color.fromARGB(148, 211, 123, 223),
                      amount: '\$2.4k',
                      percentage: '2%'),
                  const Insights(
                      percentageColor: Colors.red,
                      icon: Icon(
                        Icons.price_change_rounded,
                        size: 32,
                        color: Color.fromARGB(255, 199, 145, 8),
                      ),
                      title: 'Expenses',
                      color: Color.fromARGB(164, 249, 212, 100),
                      amount: '\$89k',
                      percentage: '11%'),
                ],
              ),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 700,
                  child: Column(
                    children: [
                      SalesChartHeader(),
                      SalesLineChart(),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                SizedBox(
                  width: 500,
                  child: Column(
                    children: [
                      SalesPieChartHeader(),
                      SalesPieChart(),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 10,
                  surfaceTintColor: Theme.of(context).colorScheme.surface,
                  child: const SizedBox(
                    width: 600,
                    child: SalesBarChart(),
                  ),
                ),
                SizedBox(
                  width: 600,
                  child: ThickBarChart(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
