import 'package:flutter/material.dart';

import '../../constants/color.dart';

class FormInput extends StatelessWidget {
  final Text text;
  final String hintText;
  final int maxLine;

  const FormInput({
    Key? key,
    required this.text,
    required this.hintText,
    required this.maxLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text,
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          maxLines: maxLine,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              hintText: hintText,
              hintStyle:
                  const TextStyle(color: AppColor.textLight, fontSize: 15),
              filled: true,
              fillColor: Colors.white),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Invalid input";
            }
            return null;
          },
        )
      ],
    );
  }
}
