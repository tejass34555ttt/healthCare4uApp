import 'package:flutter/material.dart';

class CustomDropdownTextField extends StatelessWidget {
  final String label;
  final String? value;
  final String? labeltext;
  final List<String> items;
  final void Function(String?) onChanged;
  final IconData icon;

  const CustomDropdownTextField({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    this.value,
    this.labeltext,
    this.icon = Icons.arrow_drop_down,
  });

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 0.8,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          icon: Icon(icon),
          isExpanded: true,
          items:
              items.map((String item) {
                return DropdownMenuItem<String>(value: item, child: Text(item));
              }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
