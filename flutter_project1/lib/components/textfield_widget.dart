import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget(
      {super.key,
      required this.label,
      this.hintText,
      this.preIcon,
      this.suffiIcon,
      this.width = 300,
      this.height = 50});

  final String label;
  final double width;
  final double height;
  final String? hintText;
  final Icon? preIcon;
  final Icon? suffiIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xff042628),
            fontSize: 20,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: height,
          width: width,
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: preIcon,
                suffixIcon: suffiIcon,
                hintText: hintText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
      ],
    );
  }
}
