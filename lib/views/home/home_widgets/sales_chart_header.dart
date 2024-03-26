import 'package:dashboard_app/constants.dart';
import 'package:dashboard_app/responsive.dart';
import 'package:dashboard_app/views/home/home_widgets/drop_down_menu_sales_line_chart.dart';
import 'package:flutter/material.dart';

class SalesChartHeader extends StatelessWidget {
  const SalesChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total Sales',
          style: TextStyle(
              fontSize: !Responsive.isDesktop(context) ? 12 : 18,
              fontWeight: FontWeight.bold,
              color: primaryColor),
        ),
        if (Responsive.isDesktop(context))
          Container(
            width: !Responsive.isDesktop(context)
                ? size.width * 0.4
                : size.width * 0.17,
            height: 40,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Quarter',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  width: !Responsive.isDesktop(context)
                      ? size.width * 0.1
                      : size.width * 0.06,
                  height: 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Semester',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
                const Text(
                  'Annual',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        if (!Responsive.isDesktop(context))
          const DropDownMenu(
            dropdownItems: [
              'Quater',
              'Semester',
              'Annual',
            ],
          ),
      ],
    );
  }
}
