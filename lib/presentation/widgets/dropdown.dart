import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/item_dropdown.dart';

class DropdownWidget extends StatefulWidget {
  final String label;
  final List<ItemDropdown> list;
  const DropdownWidget({super.key, required this.list, required this.label});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  ItemDropdown? _select;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(widget.label),
          const SizedBox(height: 5.0),
          Container(
            padding: const EdgeInsets.only(left: 5.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0)),
            child: DropdownButton(
                hint: const Text('Seleccione...'),
                isExpanded: true,
                value: _select,
                underline: const SizedBox(),
                items: widget.list.map((item) {
                  return DropdownMenuItem(value: item, child: Text(item.label));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _select = value;
                  });
                }),
          )
        ],
      ),
    );
  }
}
