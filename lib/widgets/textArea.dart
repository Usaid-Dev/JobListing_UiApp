import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  final String initialValue;
  final String placeholder;
  final int minLines;
  final int maxLines;

  const TextArea(
      {Key? key,
      this.initialValue = "",
      this.placeholder = "Describe Requirements...",
      this.minLines = 1,
      this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, right: 27),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1C24),
        border: Border.all(color: const Color(0xFF5D5D67), width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(style: const TextStyle(color: Colors.white, fontSize: 15),
        initialValue: initialValue,
        minLines: minLines,
        maxLines: maxLines,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(hintText: placeholder,
          hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
