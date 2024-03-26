import 'package:dashboard_app/constants.dart';
import 'package:dashboard_app/responsive.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({super.key, required this.dropdownItems});
  final List<String> dropdownItems;
  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  late String selectedItem;

  @override
  void setState(VoidCallback fn) {
    String selectedItem = widget.dropdownItems[0];
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedItem,
      elevation: 8,
      items: widget.dropdownItems.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(
                fontSize: Responsive.isMobile(context) ? 12 : 22,
                color: Colors.grey),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedItem = newValue!;
        });
      },
    );
  }
}
