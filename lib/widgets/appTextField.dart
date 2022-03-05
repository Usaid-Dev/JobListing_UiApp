import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String placeholder;
  final String txt;

  const AppTextField({Key? key, required this.placeholder, this.txt = ''}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 27),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1C24),
        border: Border.all(color: const Color(0xFF5D5D67), width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: TextEditingController()..text = txt,
        style: const TextStyle(color: Colors.white, fontSize: 15),
        decoration: InputDecoration(
          hintText: placeholder,
          labelStyle: const TextStyle(color: Colors.white, fontSize: 15),
          hintStyle: const TextStyle(
            color: Color(0xFF8F8F9E),
            fontSize: 15,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
