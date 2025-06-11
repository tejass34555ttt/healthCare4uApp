import 'package:flutter/material.dart';

class Radiobuttons extends StatefulWidget {
  final String title;
  final List<String> options;
  final String? selected;
  final ValueChanged<String?> onChanged;
  final TextEditingController? otherController;

  const Radiobuttons({
    super.key,
    required this.title,
    required this.options,
    required this.selected,
    required this.onChanged,
    this.otherController,
  });

  @override
  State<Radiobuttons> createState() => _RadiobuttonsState();
}

class _RadiobuttonsState extends State<Radiobuttons> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.otherController ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.otherController == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isOtherSelected = widget.selected == "Other";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ...widget.options.map((item) {
          return Column(
            children: [
              RadioListTile<String>(
                title: Text(item),
                value: item,
                groupValue: widget.selected,
                onChanged: (val) {
                  widget.onChanged(val);
                  if (val != "Other") {
                    _controller.clear();
                  }
                },
              ),
              if (item == "Other" && isOtherSelected)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Please specify",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (text) {
                      widget.onChanged("Other: $text");
                    },
                  ),
                ),
            ],
          );
        }),
      ],
    );
  }
}
