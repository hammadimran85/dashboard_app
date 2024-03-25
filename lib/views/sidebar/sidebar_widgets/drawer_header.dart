import 'package:dashboard_app/constants.dart';
import 'package:flutter/material.dart';

class DrawerHeaderSiderBar extends StatelessWidget {
  const DrawerHeaderSiderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: DrawerHeader(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png"),
            const Card(
              color: Color.fromRGBO(19, 32, 68, 9),
              margin: EdgeInsets.only(left: 5, right: 5, top: 50),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: secondaryColor,
                    ),
                    Text(
                      'Dashboard',
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
