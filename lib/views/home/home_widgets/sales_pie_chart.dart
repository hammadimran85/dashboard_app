import 'package:dashboard_app/constants.dart';
import 'package:dashboard_app/responsive.dart';
import 'package:dashboard_app/views/home/home_widgets/indicator.dart';
import 'package:dashboard_app/views/home/home_widgets/sales_pie_chart_header.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SalesPieChart extends StatefulWidget {
  const SalesPieChart({super.key});

  @override
  State<SalesPieChart> createState() => _SalesPieChartState();
}

class _SalesPieChartState extends State<SalesPieChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SalesPieChartHeader(),
        AspectRatio(
          aspectRatio: 1.269,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: PieChart(
                    PieChartData(
                      pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {
                          setState(() {
                            if (!event.isInterestedForInteractions ||
                                pieTouchResponse == null ||
                                pieTouchResponse.touchedSection == null) {
                              touchedIndex = -1;
                              return;
                            }
                            touchedIndex = pieTouchResponse
                                .touchedSection!.touchedSectionIndex;
                          });
                        },
                      ),
                      borderData: FlBorderData(
                        show: true,
                      ),
                      sectionsSpace: 0,
                      centerSpaceRadius: 40,
                      sections: showingSections(),
                    ),
                  ),
                ),
              ),
              Container(
                width: !Responsive.isDesktop(context) ? 90 : 120,
                margin: const EdgeInsets.only(top: 18),
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: bgColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                        offset: const Offset(0, 4.0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Indicator(
                      color: Colors.blue,
                      text: 'Pizza',
                      isSquare: false,
                      percentage: '40%',
                    ),
                    Indicator(
                      color: Colors.yellow,
                      text: 'Burgers',
                      isSquare: false,
                      percentage: '30%',
                    ),
                    Indicator(
                      color: Colors.purple,
                      text: 'Pasta',
                      isSquare: false,
                      percentage: '15%',
                    ),
                    Indicator(
                      color: Colors.green,
                      text: 'Beverages',
                      isSquare: false,
                      percentage: '15%',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 18.0 : 10.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.blue,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.yellow,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.purple,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.green,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
