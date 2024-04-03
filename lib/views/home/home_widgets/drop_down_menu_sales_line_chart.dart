import 'package:dashboard_app/responsive.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  const DropDownMenu({Key? key}) : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String selectedItem = 'Semester'; // Default selected value

  @override
  Widget build(BuildContext context) {
    final List<String> dropDownItems = [
      'Quarter',
      'Semester',
      'Annual',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        DropdownButton<String>(
          padding: const EdgeInsets.all(5),
          value: selectedItem,
          items: dropDownItems.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 12 : 18,
                  color: Colors.grey,
                ),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedItem = newValue!;
            });
          },
        ),
      ],
    );
  }
}
