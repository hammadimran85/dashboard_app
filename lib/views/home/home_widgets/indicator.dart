import 'package:dashboard_app/constants.dart';
import 'package:dashboard_app/responsive.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    required this.percentage,
    this.size = 10,
    this.textColor,
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Container(
              width: !Responsive.isDesktop(context) ? 8 : size,
              height: !Responsive.isDesktop(context) ? 8 : size,
              decoration: BoxDecoration(
                shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
                color: color,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: !Responsive.isDesktop(context) ? 8 : 12,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ],
        ),
        Text(
          percentage,
          style: TextStyle(
            overflow: TextOverflow.ellipsis,
            color: primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: !Responsive.isDesktop(context) ? 8 : 16,
          ),
        )
      ],
    );
  }
}
