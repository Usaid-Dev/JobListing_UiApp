import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final String placeholder;

  const SearchTextField({Key? key, required this.placeholder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 19),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1C24),
        border: Border.all(color: const Color(0xFF5D5D67), width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(style: const TextStyle(color: Colors.white, fontSize: 15),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search_sharp,
            color: Color(0xFF5D5D67),
          ),
          hintText: placeholder,
          hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
