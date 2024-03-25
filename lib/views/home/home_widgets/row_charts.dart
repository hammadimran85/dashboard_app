import 'package:dashboard_app/responsive.dart';
import 'package:dashboard_app/views/home/home_widgets/sales_bar_chart.dart';
import 'package:dashboard_app/views/home/home_widgets/sales_line_chart.dart';
import 'package:dashboard_app/views/home/home_widgets/sales_pie_chart.dart';
import 'package:dashboard_app/views/home/home_widgets/thick_bar_chart.dart';
import 'package:flutter/material.dart';

class Charts extends StatelessWidget {
  const Charts({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        if (!Responsive.isDesktop(context))
          SizedBox(
            width: size.width * 0.7,
            child: const Column(
              children: [
                SalesLineChart(),
              ],
            ),
          ),
        if (!Responsive.isDesktop(context))
          const SizedBox(
            height: 30,
          ),
        if (!Responsive.isDesktop(context))
          SizedBox(
            width: size.width * 0.7,
            child: const Column(
              children: [
                SalesPieChart(),
              ],
            ),
          ),
        if (Responsive.isDesktop(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width * 0.3,
                child: const Column(
                  children: [
                    SalesLineChart(),
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              SizedBox(
                width: size.width * 0.22,
                child: const Column(
                  children: [
                    SalesPieChart(),
                  ],
                ),
              )
            ],
          ),
        if (!Responsive.isDesktop(context))
          const SizedBox(
            height: 30,
          ),
        const SizedBox(
          height: 10,
        ),
        if (!Responsive.isDesktop(context))
          Card(
            elevation: 10,
            shadowColor: Colors.grey.shade50,
            surfaceTintColor: Theme.of(context).colorScheme.surface,
            child: SizedBox(
              width: size.width * 0.7,
              height: size.height * 0.4,
              child: const SalesBarChart(),
            ),
          ),
        if (!Responsive.isDesktop(context))
          const SizedBox(
            height: 30,
          ),
        if (!Responsive.isDesktop(context))
          Card(
            elevation: 10,
            shadowColor: Colors.grey.shade50,
            surfaceTintColor: Theme.of(context).colorScheme.surface,
            child: SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.5,
              child: ThickBarChart(),
            ),
          ),
        if (Responsive.isDesktop(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: size.width * 0.3,
                child: const SalesBarChart(),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: size.width * 0.25,
                child: ThickBarChart(),
              )
            ],
          )
      ],
    );
  }
}
