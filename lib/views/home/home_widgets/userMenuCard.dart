import 'package:dashboard_app/constants.dart';
import 'package:flutter/material.dart';

class UserMenuCard extends StatelessWidget {
  const UserMenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      child: Row(
        children: [
          Image.asset(
            "assets/images/linkdin_profile.jpg",
            height: 38,
          ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
