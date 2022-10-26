import 'package:flutter/material.dart';

import '../constants/color.dart';

class SearchBar extends StatelessWidget {
  final String hintText;

  const SearchBar({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5),
          ),
          hintText: hintText,
          prefixIcon: const Icon(Icons.search),
          hintStyle: const TextStyle(color: AppColor.textLight, fontSize: 15),
          filled: true,
          fillColor: Colors.white),
    );
  }
}
