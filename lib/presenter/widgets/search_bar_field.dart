import 'package:flutter/material.dart';

class SearchBarField extends StatelessWidget {
  const SearchBarField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color.fromARGB(255, 167, 195, 203),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: const Color(0xFFECF3F5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 209, 226, 231),
            width: 2,
          ),
        ),
        hintText: 'Name or number',
      ),
    );
  }
}
