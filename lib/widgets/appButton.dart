import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key, required this.label, required this.onPress}): super(key: key);
  final String label;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onPress,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 27, bottom: 59),
              // 590
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFF5D5D67), width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF191720),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
