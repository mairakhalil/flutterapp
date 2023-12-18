import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  final String label;
  final String selectedValue;
  final List<String> options;
  final ValueChanged<String?> onChanged;

  const DropDownMenu({
    Key? key,
    required this.label,
    required this.selectedValue,
    required this.options,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  late String selectedCurrency;

  @override
  void initState() {
    super.initState();
    selectedCurrency = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Color(0XFFEAEAEA),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                height: 1.36,
                letterSpacing: 0.25,
                color: (Color(0XFF8B8B8B))),
          ),
          DropdownButton<String>(
            value: selectedCurrency,
            isExpanded: true,
            icon: _buildDropdownIcon(),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              height: 1.5,
              letterSpacing: 0.75,
              color: Color(0xFF000000),
            ),
            underline: Container(), // Remove the default underline
            onChanged: (String? newValue) {
              setState(() {
                selectedCurrency = newValue!;
                widget.onChanged(newValue);
              });
            },
            items: widget.options.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownIcon() {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      child: const Icon(
        Icons.keyboard_arrow_down,
        color: Color(0xFF8B8B8B),
      ),
    );
  }
}
