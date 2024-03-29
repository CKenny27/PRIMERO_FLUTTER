import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final String placeholder;
  final IconData? icon;
  final bool isTextArea;

  const TextFieldWidget({
    Key? key,
    required this.label,
    required this.placeholder,
    this.icon,
    this.isTextArea = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(label),
      const SizedBox(
        height: 5.0,
      ),
      Container(
        padding: const EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0)),
        child: TextField(
          maxLines: isTextArea ? 6 : null,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: placeholder,
              suffixIcon: Icon(
                icon,
                color: Colors.grey,
              )),
        ),
      )
    ]);
  }
}
