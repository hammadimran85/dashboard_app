import 'package:dashboard_app/constants.dart';
import 'package:dashboard_app/views/sidebar/sidebar_widgets/drawer_footer.dart';
import 'package:dashboard_app/views/sidebar/sidebar_widgets/drawer_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      surfaceTintColor: Theme.of(context).colorScheme.surface,
      elevation: 2,
      child: ListView(
        children: [
          const DrawerHeaderSiderBar(),
          DrawerListTile(
            title: "Inventory items management",
            svgSrc: "assets/icons/grocery-store-icon.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Sales item Management",
            svgSrc: "assets/icons/tag-icon.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Orders/Profit Management",
            svgSrc: "assets/icons/list-round-bullet-icon.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Customer App Management",
            svgSrc: "assets/icons/manage-icon.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Kiosk Display Management",
            svgSrc: "assets/icons/desktop-application-app-icon.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "user Auth Management",
            svgSrc: "assets/icons/male-icon.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Company Info",
            svgSrc: "assets/icons/info-line-icon.svg",
            press: () {},
          ),
          const DrawerFooter(),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 28, right: 10, bottom: 12),
      leading: SvgPicture.asset(
        svgSrc,
        width: 18,
        height: 18,
        color: Colors.grey.shade500,
      ),
      onTap: press,
      horizontalTitleGap: 8.0,
      title: Text(
        title,
        style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 14,
            fontWeight: FontWeight.bold),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
