import 'package:dashboard_app/views/home/home_widgets/userMenuCard.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Dashboard',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Spacer(flex: 3),
        Expanded(
          flex: 3,
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search),
                suffixIconColor: Colors.grey.shade400,
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                hintText: 'Search..',
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
              ),
            ),
          ),
        ),
        const Spacer(flex: 2),
        Icon(
          Icons.notifications_active_outlined,
          color: Colors.grey.shade400,
          fill: 0.1,
        ),
        const UserMenuCard(),
      ],
    );
  }
}
