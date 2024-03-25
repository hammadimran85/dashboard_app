import 'package:dashboard_app/responsive.dart';
import 'package:dashboard_app/views/home/home_widgets/column_insights.dart';
import 'package:dashboard_app/views/home/home_widgets/header.dart';
import 'package:dashboard_app/views/home/home_widgets/row_charts.dart';
import 'package:dashboard_app/views/home/home_widgets/row_insights.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final insightWidget = Responsive.isMobile(context)
        ? const ColumnInsights()
        : const RowInsights();

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              insightWidget,
              const SizedBox(
                height: 30,
              ),
              MediaQuery.of(context).size.width >= 350
                  ? const Charts()
                  : Center(
                      child: Text(
                        'Screen Size is too small.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.error),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
