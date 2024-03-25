import 'package:dashboard_app/constants.dart';
import 'package:dashboard_app/controllers/side_bar_controller.dart';
import 'package:dashboard_app/responsive.dart';
import 'package:dashboard_app/views/home/home_widgets/userMenuCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        if (Responsive.isDesktop(context))
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: primaryColor,
            ),
            onPressed: context.read<SideBarController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const SizedBox(
          width: 30,
        ),
        if (size.width >= 250)
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
                  hintStyle:
                      TextStyle(color: Colors.grey.shade400, fontSize: 14),
                  hintText: 'Search..',
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                ),
              ),
            ),
          ),
        if (size.width >= 250) const Spacer(flex: 2),
        Icon(
          Icons.notifications_active_outlined,
          color: Colors.grey.shade400,
          fill: 0.1,
        ),
        if (size.width >= 250) const UserMenuCard(),
      ],
    );
  }
}
